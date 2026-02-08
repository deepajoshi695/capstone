# Stage 1: Build the application using a full JDK environment
FROM maven:3.8.1-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Use 'mvn clean install' to build the JAR
RUN mvn clean install -DskipTests

# Stage 2: Create the final, lightweight runtime image
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# Copy the built JAR from the 'build' stage
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
