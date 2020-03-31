FROM openjdk:8

MAINTAINER vincenzonorman.vitale@unina.it

COPY CustomerServiceExample /

RUN cd /CustomerServiceExample & ls -l

RUN chmod +x mvnw

RUN ./mvnw clean package

WORKDIR /CustomerServiceExample

CMD ["java", "-jar", "CustomerServiceExample-0.0.1-SNAPSHOT.jar"]