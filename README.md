# Maxscale jenkins jobs

This repo contains yaml description of the jenkins jobs used in Maxscale continious integration system. 

## Branches list monitoring jobs

### Jobs that use branches lists

* **maxscale_jobs/monitoring_of_particular_branch_set_in_maxscale-bsl.yaml** - on each push to maxscale repository check that branch is from on_push_maxscale_branches.list file and if it is true, executes <kbd>build</kbd> and <kbd>run_test_snapshot</kbd> with test_set value from on_push_maxscale_branches.list.
* **maxscale_jobs/daily_maxscale_bsl_branch_run_test.yaml** - daily perform <kbd>run_test</kbd> job for each branch and test_set stored in run_test_branches.list with default run_test params.

### Jobs for editing branches lists

* **maxscale_jobs/print_branch_list** - outputs whole file content.
  * *Parameter:*
    + *branches_list* -  one of the files in $HOME/jobs_branches/ with list of branches and test sets for them. 
  * *How to use:* open [print_branch_list][1] job, select Build with Parameters and choose branches list file.

* **maxscale_jobs/remove_line_from_branches_file** - deletes first entry by branch name.
  * *Parameters:*
    + *branch_to_check* - branch name or regex, which is must be deleted from branches list file;
    + *branches_list* -  one of the files in $HOME/jobs_branches/ with list of branches and test sets for them. 
  * *How to use:* open [remove_line_from_branches_file][2] job, select Build with Parameters, write regex or branch name of searching line  to delete and choose branches list file.
  * *Example:*

    <pre>
-- branch_to_check=1.4
-- branches_list=$HOME/jobs_branches/on_push_maxscale_branches.list
</pre>
  * *Result*: delete "1.4" branch name and its test set.

* **maxscale_jobs/update_branches_file** - adds new line (branch|test_set) to given file.
  * *Parameters:*
    + *branch_to_check* - branch name , which is must be added to branches list file;
    + *test_set* - command line parameters given to CTest;
    + *branches_list* -  one of the files in \$HOME/jobs_branches/ with list of branches and test sets for them;
    + repo - reference to repo, where searching $branch_to_check 
  * *How to use:* open [update_branches_file][3] job, select Build with Parameters, write regex or branch name of searching line to delete and choose branches list file.
  * *Example:*
    
    <pre>
-- branch_to_check=1.4
-- test_set=-LE HEAVY
-- branches_list=$HOME/jobs_branches/on_push_maxscale_branches.list
-- repo=git@github.com:mariadb-corporation/maxscale.git
</pre>
  * *Result*: create new line with branch name "1.4" and test set lines "-LE HEAVY".

* **maxscale_jobs/update_test_set_in_branches_file** - change \$test_set for a given \$branch in \$file for "\$branch|$test_set".
  * *Parameters:*
    + *branch_to_check* - branch name or regex, which is looking in branches list file;
    + *test_set* - command line parameters given to CTest;
    + *branches_list* -  one of the files in $HOME/jobs_branches/ with list of branches and test sets for them;
  * *How to use:* open [update_test_set_in_branches_file][4] job, select Build with Parameters, write regex or branch name of searching line where change test_set in a given branches list file.
  * *Example:*

    <pre>
-- branch_to_check=MXS-.*
-- test_set=-I 41,42
-- branches_list=$HOME/jobs_branches/on_push_maxscale_branches.list
</pre>
  * *Result*: update all test sets lines to "-I 41,42" with regex "MXS-.*".

### Branches list file format

Branches files are stored at $HOME/jobs_branches/ and have following format.

<pre>
branch1|test_set1
branch2|test_set2
branch3|test_set3
branch4| -L 111 44
</pre>

 [1]: http://max-tst-01.mariadb.com:8089/view/push_tests/job/print_branch_list/
 [2]: http://max-tst-01.mariadb.com:8089/view/push_tests/job/remove_line_from_branches_file/
 [3]: http://max-tst-01.mariadb.com:8089/view/push_tests/job/update_branches_file/
 [4]: http://max-tst-01.mariadb.com:8089/view/push_tests/job/update_test_set_in_branches_file/
