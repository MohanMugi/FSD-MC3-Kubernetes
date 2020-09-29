#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

ADD ./target/user-service-1.0.0-SNAPSHOT.jar /usr/src/user-service.jar

WORKDIR usr/src

ENTRYPOINT ["java","-jar", "user-service.jar"]