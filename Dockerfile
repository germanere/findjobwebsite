   FROM tomcat:9.0-alpine
   COPY target/asm02.war /usr/local/tomcat/webapps/asm02.war
   ENV DB_URL jdbc:mysql://mysql-156389-0.cloudclusters.net:10050/asm02
   ENV DB_USERNAME admin
   ENV DB_PASSWORD SM1BZH94
   EXPOSE 8080
   CMD ["catalina.sh", "run"]
