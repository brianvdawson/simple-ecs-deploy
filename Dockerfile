FROM library/tomcat
COPY simple-ecs-webapp/target/simple-ecs-webapp.war /usr/local/tomcat/webapps
COPY tomcat-users.xml /usr/local/conf/tomcat-user.xml/
