FROM ubuntu:14.04
MAINTAINER docker@fhb.de
RUN apt-get update
RUN apt-get install openjdk-7-jre-headless -y
ADD ./target/springboot_test-0.0.1-SNAPSHOT.jar /service.jar
ENTRYPOINT java -jar /service.jar
EXPOSE 8080