   FROM tomcat:9.0-alpine
   COPY target/asm02.war /usr/local/tomcat/webapps/asm02.war
   ENV DB_URL jdbc:mysql://mysql-155597-0.cloudclusters.net:19856/asm02
   ENV DB_USERNAME admin
   ENV DB_PASSWORD qiA0vIUC
   EXPOSE 8080
   CMD ["catalina.sh", "run"]
