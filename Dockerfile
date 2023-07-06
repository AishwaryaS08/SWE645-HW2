FROM tomcat:latest

LABEL maintainer="Aishwarya Suresh"

ADD StudentSurvey.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
