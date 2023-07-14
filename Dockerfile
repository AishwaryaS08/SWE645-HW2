FROM tomcat:9.0-jdk15
Run mkdir /usr/local/tomcat/webapps/
COPY AishwaryaSuresh_StudentSurveyForm.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
