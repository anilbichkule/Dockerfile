FROM tomcat:8.0
ADD gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
