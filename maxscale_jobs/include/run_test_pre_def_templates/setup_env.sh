echo box="predefined_template" >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo version=$template_name >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo name=$name1-$template_name >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo ci_release="ci" >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo big="no" >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo maxscale_restart="yes" >> $WORKSPACE/initial_env_vars_$BUILD_ID
