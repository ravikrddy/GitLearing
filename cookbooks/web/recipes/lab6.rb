script 'lab6' do
interpreter "bash"
code <<EOH
cd /tmp
wget http://mirror.fibergrid.in/apache/tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz
tar xzf apache-tomcat-7.0.77.tar.gz
mv apache-tomcat-7.0.77 /usr/local/tomcat7
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
mv jenkins.war  /usr/local/tomcat7/webapps
cd /usr/local/tomcat7
./bin/startup.sh
EOH
end

