FROM ubuntu:20.04
RUN apt update \
&& apt install default-jdk maven tomcat9 git -y
# создаст папку, если отсутcвует и задаст контекст для дальнейшего выполнения
WORKDIR /boxfuse-sample-java-war-hello
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git .\
&& mvn package \ 
&& cp target/hello-1.0.war /var/lib/tomcat9/webapps/

#got info from https://hub.docker.com/_/tomcat
EXPOSE 8080
#
CMD ["catalina.sh", "run"]