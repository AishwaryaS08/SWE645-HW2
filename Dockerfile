FROM tomcat:9.0-jdk15
COPY . /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
