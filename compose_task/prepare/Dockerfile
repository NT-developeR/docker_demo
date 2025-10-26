#build the image
FROM maven:3.9.6-eclipse-temurin-17
RUN apt update \
&& apt install git -y

WORKDIR /output
VOLUME /output
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git . \
&& mvn package -DskipTests
RUN cp /output/target/*.war /output/