#Dockerfile contains all the commands with which
#Docker can build images reading the instructions.

FROM openjdk:11

ADD ./target/order-service-1.0.0-SNAPSHOT.jar /order/src/order-service.jar

WORKDIR order/src

ENTRYPOINT ["java","-jar", "order-service.jar"]