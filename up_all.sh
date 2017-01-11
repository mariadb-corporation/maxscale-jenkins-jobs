#!/bin/bash

# $1 - repo_user
# $2 - repo_password
# $3 - particular job (optional)

echo \'$1\' > maxscale_jobs/include/default_repo_user.yaml
echo \'$2\' > maxscale_jobs/include/default_repo_password.yaml

cp maxscale_jobs/build_and_test.yaml maxscale_jobs/build_and_test_alone.yaml
sed -i "s/concurrent: true/concurrent: false/" maxscale_jobs/build_and_test_alone.yaml
sed -i "s/name: build_and_test/name: build_and_test_alone/" maxscale_jobs/build_and_test_alone.yaml
sed -i -e "/builders:/i\      - \!include: './maxscale_jobs/include/slaves_for_build_and_test_alone.yaml'" maxscale_jobs/build_and_test.yaml

if [ -z "$3" ]
then
        jobs=`ls maxscale_jobs/*.yaml -1`
else
        jobs="$3"
fi
res=0
failed_list=""

for job in $jobs
do
	../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update $job
	if [ $? != 0 ]; then
		echo "Loading of $job FAILED!"
		failed_list="$failed_list \n $job"
		res=1
	fi
done

echo \'\' > maxscale_jobs/include/default_repo_user.yaml
echo \'\' > maxscale_jobs/include/default_repo_password.yaml

if [ $res != 0 ]; then
	echo ""
	echo "Failed jobs:"
	echo -e $failed_list
fi

exit $res
