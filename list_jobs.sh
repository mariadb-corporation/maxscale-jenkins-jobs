#!/bin/bash

function prop {
  grep "${1}=" ${JENKINS_CONFIG}|cut -d'=' -f2
}

JENKINS_CONFIG="../jenkins_job_gitizer/test_configs/mdbci_jenkins.ini"

java -jar "$HOME/jenkins-cli.jar" -s $(prop 'url') -auth $(prop 'user'):$(prop 'password') list-jobs | sort > jobs_from_jenkins




