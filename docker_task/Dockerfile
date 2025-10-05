FROM ubuntu:20.04
RUN apt update 
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 -y
RUN apt install git -y
# создаст папку, если отсутcвует и задаст контекст для дальнейшего выполнения
WORKDIR /app 
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/ 
RUN mvn package
RUN pwd
RUN cd target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
RUN cd /var/lib/tomcat9/webapps/
#got info from https://hub.docker.com/_/tomcat
EXPOSE 8080
#
CMD ["catalina.sh", "run"]