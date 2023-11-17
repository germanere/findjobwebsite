   FROM tomcat:9.0-alpine
   COPY target/asm02.war /usr/local/tomcat/webapps/asm02.war
   ENV DB_URL jdbc:mysql://some-mysql:3306/asm02
   ENV DB_USERNAME root
   ENV DB_PASSWORD my-secret-pw
   EXPOSE 8080
   CMD ["catalina.sh", "run"]
