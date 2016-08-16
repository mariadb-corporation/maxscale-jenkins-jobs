#!/bin/bash

# $1 - repo_user
# $2 - repo_password

set -e

echo \'$1\' > maxscale_jobs/include/default_repo_user.yaml
echo \'$2\' > maxscale_jobs/include/default_repo_password.yaml

../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_all.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_all_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_and_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_ppc.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_ppc_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_ppc_all_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_regular.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/build_regular_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/destroy.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/remove_lock.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_snapshot.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_matrix.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_matrix_mysql.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_pre_def_template.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_pre_def_template_matrix.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/create_env.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/create_env_open.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/show_IP.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/upgrade_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/upgrade_test_all.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_test_no_env_rebuild.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/run_named_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/monitor_maxscale_bsl.yaml 
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/create_snapshot.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/restore_snapshot.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/daily_heavy_run_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/weekly_no_smoke_run_test.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/weekly_smoke_run_test_matrix.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/collect_coredumps_for_build.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/destroy.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/clone_configuration.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/smart_remove_lock.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/cleanup.yaml
../jenkins_job_gitizer/scripts/ud_job.sh ../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini update maxscale_jobs/match_pattern_from_bsl_push.yaml

echo \'\' > maxscale_jobs/include/default_repo_user.yaml
echo \'\' > maxscale_jobs/include/default_repo_password.yaml
