host=$1
port=$2
file=$3

$HOME/mdbci/scripts/jenkins_cli/install_plugins.sh -s $host -p $port -f $file
