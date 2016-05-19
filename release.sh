sudo service tomcat8 stop
sudo cp EE-0.1.war /var/lib/tomcat8/webapps/EE.war
sudo rm -rf /var/lib/tomcat8/webapps/EE
sudo service tomcat8 start

