FROM openjdk:11-slim-buster as build-stage
COPY .mvn .mvn
COPY mvnw .
COPY pom.xml .

RUN ./mvnw -B dependency:go-offline

COPY src src

RUN ./mvnw -B package


FROM openjdk:11-jdk
WORKDIR jar
COPY --from=build-stage target/spring-rest-api-0.0.1-SNAPSHOT.jar /app-jar/spring-rest-api.jar
CMD ["java", "-jar", "/app-jar/spring-rest-api.jar"]