FROM tomcat:8.0
ADD Dockerfile/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
