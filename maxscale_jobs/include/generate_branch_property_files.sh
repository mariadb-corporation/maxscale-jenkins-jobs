branches_file="$HOME/run_test_branches.list"
if [ ! -f ${branches_file} ]; then
	echo "Branch file ${branches_file} not found! Exiting."
	exit 1
fi
property_files_dir="$WORKSPACE/branches"
mkdir ${property_files_dir}
cat ${branches_file} | xargs -I@ sh -c "echo 'target=@' > ${property_files_dir}/'@'"
