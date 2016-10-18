echo product=`echo $backend | cut -d'-' -f1 ` >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo version=`echo $backend | cut -d'-' -f2 ` >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo name=$name1-$backend-$box >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo big="no" >> $WORKSPACE/initial_env_vars_$BUILD_ID
echo maxscale_restart="yes" >> $WORKSPACE/initial_env_vars_$BUILD_ID
