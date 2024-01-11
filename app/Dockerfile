FROM ubi8/openjdk-11

WORKDIR /app

COPY target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar .

CMD ["java", "-Dspring.profiles.active=http", "-jar", "spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar"]