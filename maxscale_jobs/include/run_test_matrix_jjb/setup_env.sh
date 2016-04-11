export product=`echo $backend | cut -d'-' -f1 `
export version=`echo $backend | cut -d'-' -f2 `
export name=$backend-$box-$target
export ci_release="ci"
export big="no"
export maxscale_restart="yes"
