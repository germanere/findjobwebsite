   FROM tomcat:9.0-alpine
   COPY target/asm02.war /usr/local/tomcat/webapps/asm02.war
   ENV DB_URL jdbc:mysql://viaduct.proxy.rlwy.net:42524/railway
   ENV DB_USERNAME root
   ENV DB_PASSWORD 31HD1E36H6e-B3hb-ge5FgHg64Acd6hA
   EXPOSE 8888
   CMD ["catalina.sh", "run"]
