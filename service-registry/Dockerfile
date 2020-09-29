#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

ADD ./target/service-registry-1.0.0-SNAPSHOT.jar /service/src/service-registry.jar

WORKDIR service/src

ENTRYPOINT ["java","-jar", "service-registry.jar"]