FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY target/spring-petclinic-3.4.0-SNAPSHOT.jar /app
COPY src ./src
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-3.4.0-SNAPSHOT.jar"]
