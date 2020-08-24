FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD 

COPY pom.xml /build/ 

COPY src /build/src/ 

WORKDIR /build/ 

RUN mvn package 

FROM openjdk:8-jdk-alpine 

WORKDIR /app 
COPY --from=MAVEN_BUILD /target/demo-0.0.1-SNAPSHOT.jar 
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]


