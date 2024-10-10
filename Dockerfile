FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app
COPY .. .
RUN chmod +x ./gradlew
RUN ./gradlew build --no-daemon
CMD ["java", "Main"]
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/build/libs/file.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]