file="$1"

java -jar $HOME/jenkins-cli.jar -s http://max-tst-01.mariadb.com:8089/ list-plugins > ${file}.temp
sed -i 's|(.*)||g' ${file}.temp
awk -F' ' '{print $1 " " $NF}' ${file}.temp > ${file}
rm ${file}.temp
