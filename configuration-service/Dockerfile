#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

ADD ./target/configuration-service-1.0.0-SNAPSHOT.jar /config/src/configuration-service.jar

WORKDIR config/src

ENTRYPOINT ["java","-jar", "configuration-service.jar"]