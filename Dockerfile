#FROM maven:3.8.5-openjdk-17 AS build
#COPY . .
#RUN mvn clean package -DskipTests
#
#FROM openjdk:17.0.1-jdk-slim
#COPY --from=build /target/blog-0.0.1-SNAPSHOT.jar blog.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","blog.jar"]


FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/blog-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]