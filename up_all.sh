#!/bin/bash

# $1 - repo_user
# $2 - repo_password

echo \'$1\' > maxscale_jobs/include/default_repo_user.yaml
echo \'$2\' > maxscale_jobs/include/default_repo_password.yaml

../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_all.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_and_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_ppc.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_ppc_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_regular.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_regular_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/destroy.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/remove_lock.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_matrix.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_matrix_mysql.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_pre_def_template.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_pre_def_template_matrix.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/create_env.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/show_IP.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/upgrade_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/upgrade_test_all.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_no_env_rebuild.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_named_test.yaml

echo \'\' > maxscale_jobs/include/default_repo_user.yaml
echo \'\' > maxscale_jobs/include/default_repo_password.yaml
