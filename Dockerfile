FROM tomcat:8.0
ADD /mnt/git/game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
