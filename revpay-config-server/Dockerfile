FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/revpay-config-server-1.0-SNAPSHOT.jar app.jar
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "app.jar"]
