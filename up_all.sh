#!/bin/bash

# $1 - repo_user
# $2 - repo_password

echo \'$1\' > maxscale_jobs/include/default_repo_user.yaml
echo \'$2\' > maxscale_jobs/include/default_repo_password.yaml

jobs=`ls maxscale_jobs/*.yaml -1`
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
