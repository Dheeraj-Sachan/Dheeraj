FROM openjdk:8
ADD target/docker-0.0.1-SNAPSHOT.jar docker-spring-bott.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","docker-spring-bott.jar"]