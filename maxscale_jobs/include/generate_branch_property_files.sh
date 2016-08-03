branches_file="$home/run_test_branches.list"
property_files_dir="$WORKSPACE/branches"

cat ${branches_file} | xargs -I@ echo "target=@" > {property_files_dir}/@
