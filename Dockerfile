# Use OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copy built jar
COPY target/springbootcicd-1.0.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
