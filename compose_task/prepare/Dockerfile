#build the image
FROM maven:3.8.6-openjdk-11-slim
RUN apt update \
&& apt install git -y

WORKDIR /output
VOLUME /output
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git . \
&& mvn package -DskipTests
RUN cp /output/target/*.war /output/