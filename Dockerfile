FROM adoptopenjdk:17

WORKDIR /app

# Copy the application JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar .

EXPOSE 8085

# Set Java heap size and run the application
CMD ["java", "-Xmx512m", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
