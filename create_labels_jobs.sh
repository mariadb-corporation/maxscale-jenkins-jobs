#!/bin/bash

job_list=(run_test run_test_matrix run_test_snapshot build_and_test build_and_test_alone build_and_test_simple)


for job in "${job_list[@]}"
do
  cp maxscale_jobs/${job}.yaml maxscale_jobs/${job}_labels.yaml
  sed -i "s/name: ${job}/name: ${job}_labels/"  maxscale_jobs/${job}_labels.yaml
  sed -i "s/test_set.yaml/labels.yaml/"  maxscale_jobs/${job}_labels.yaml
done

