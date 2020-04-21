FROM openjdk:11-jdk-slim

RUN apt-get update && apt-get upgrade

RUN apt-get install curl -y

ADD spring-covid19-tracker/target/spring*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar" ]
