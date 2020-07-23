FROM openjdk:8-jdk-alpine

EXPOSE 8008

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} app.jar

RUN echo "Creating docker image"

MAINTAINER "saumya.saxena2730@gmail.com"

ENTRYPOINT ["java", "-jar", "app.jar"]
