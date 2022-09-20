RUN ubuntu:18.04
RUN apt-get update -y
RUN mkdir tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.zip /tomcat
RUN unzip apache-tomcat-9.0.65.zip /tomcat
RUN rm -rf apache-tomcat-9.0.65.zip  && chmod -R 777 apache-tomcat-9.0.65
COPY /mnt/git/game-of-life/gameoflife-web/target/gameoflife.war /tomcat/apache-tomcat-9.0.65/webapps
EXPOSE 8080
