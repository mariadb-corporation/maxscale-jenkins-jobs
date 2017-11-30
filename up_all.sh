#!/bin/bash

# $1 - particular job (optional)

./create_build_and_test_alone.sh
./create_labels_jobs.sh

if [ -z "$1" ]
then
        jobs=`ls maxscale_jobs/*.yaml -1`
else
        jobs="$1"
fi
res=0
failed_list=""

for job in $jobs
do
	../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update $job
	if [ "$?" != "0" ]; then
		echo "Loading of $job FAILED!"
		failed_list="$failed_list \n $job"
		res=1
	fi
done

if [ "$res" != "0" ]; then
	echo ""
	echo "Failed jobs:"
	echo -e $failed_list
fi

ls maxscale_jobs/*.yaml -1 | sed "s|maxscale_jobs/||" | sed "s|\.yaml||" | sort > jobs_from_yamls

./list_jobs.sh

echo "Jobs in Jenkins that are not loaded from yamls:"
diff --changed-group-format='%<%>' --unchanged-group-format='' jobs_from_jenkins jobs_from_yamls

exit $res
