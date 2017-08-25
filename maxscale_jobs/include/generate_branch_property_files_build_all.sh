if [ ! -f "${branches_list_file}" ]; then
	echo "Branch file ${branches_list_file} not found! Exiting."
	exit 1
fi
property_files_dir="$WORKSPACE/branches"
mkdir ${property_files_dir}
cat ${branches_list_file} | while read branch_string;
do
	branch_template=`echo "${branch_string}"`
#	test_set=`echo "${branch_string}"| sed -e 's/^[^|]*|//g'`
	# Iterate over all related branches
	git ls-remote --heads ${repo} | grep ${branch_template} | sed 's?.*refs/heads/??' | while read branch;
	do
	   	if [ "${branch}" == "${branch_template}" ] ; then
			echo "scm_source=${branch}"	> ${property_files_dir}/${branch}
		        echo "target=${branch}" >> ${property_files_dir}/${branch}
#			echo "test_set=${test_set}" >>${property_files_dir}/${branch}
#			echo "name=daily_maxscale_bsl_branch_run_test-$BUILD_ID-${branch}" >> ${property_files_dir}/${branch} 
		fi
	done
done
