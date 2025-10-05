FROM tomcat:9-jdk11
RUN apt update \
&& apt install maven git -y
# создаст папку, если отсутcвует и задаст контекст для дальнейшего выполнения
WORKDIR /boxfuse-sample-java-war-hello
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git . \
&& mvn package \ 
&& cp target/hello-1.0.war /usr/local/tomcat/webapps/

#got info from https://hub.docker.com/_/tomcat
EXPOSE 8080
#
CMD ["catalina.sh", "run"]