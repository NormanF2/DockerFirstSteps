FROM openjdk:8

MAINTAINER vincenzonorman.vitale@unina.it

COPY CustomerServiceExample /CustomerServiceExample

WORKDIR /CustomerServiceExample

RUN hmod +x mvnw

RUN ./mvnw clean package

RUN cp /CustomerServiceExample/target/CustomerServiceExampleApplication-0.0.1-SNAPSHOT.jar /

WORKDIR /

RUN rm -rf CustomerServiceExample

CMD ["java", "-jar", "CustomerServiceExampleApplication-0.0.1-SNAPSHOT.jar"]
