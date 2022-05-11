FROM maven:3.6.0-jdk-11-slim AS build-stage
WORKDIR app-jar
COPY src /app-jar
COPY pom.xml /app-jar
RUN mvn clean install


FROM openjdk:11-jdk
WORKDIR jar
COPY --from=build-stage /app-jar/target/spring-rest-api-0.0.1-SNAPSHOT.jar /app-jar/spring-rest-api.jar
CMD ["java", "-jar", "/app-jar/spring-rest-api.jar"]