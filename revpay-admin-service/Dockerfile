FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/revpay-admin-service-1.0-SNAPSHOT.jar app.jar
EXPOSE 8088
ENTRYPOINT ["java", "-jar", "app.jar"]
