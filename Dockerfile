from tomcat:9.0
copy target/*.war /usr/local/tomcat/webapps/ROOT.war
expose 8088
cmd ["catalina.sh","run"]