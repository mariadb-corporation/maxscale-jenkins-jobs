# Maxscale jenkins jobs

This repo contains yaml description of the jenkins jobs used in Maxscale continious integration system. 

## Branches list monitoring jobs

### Jobs that use branches lists

* maxscale_jobs/monitoring_of_particular_branch_set_in_maxscale-bsl.yaml - on each push to maxscale repository check that branch is from on_push_maxscale_branches.list file and if it is true, executes build and run_test_snapshot with test_set value from on_push_maxscale_branches.list.
* maxscale_jobs/daily_maxscale_bsl_branch_run_test.yaml - daily perform run_test job for each branch and test_set stored in run_test_branches.list with default run_test params.

### Jobs for editing branches lists

* update_test_set_in_branches_file
* print_branch_list
* remove_line_from_branches_file
* update_branches_file

### Branches list file format

Branches files are stored at $HOME/jobs_branches/ and have following format.

<pre>
branch1|test_set1
branch2|test_set2
branch3|test_set3
branch4| -L 111 44
</pre>
