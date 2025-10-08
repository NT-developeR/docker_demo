#start prepared image 
FROM tomcat:9-jre11-temurin-jammy
RUN mkdir -p /input
VOLUME /input
COPY ./input/*.war /usr/local/tomcat/webapps/  
CMD ["catalina.sh", "run"]