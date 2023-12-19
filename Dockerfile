FROM tomcat:9.0
WORKDIR /usr/local/tomcat/
RUN mv webapps.dist/* /usr/local/tomcat/webapps/
COPY target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]

