FROM openjdk:11
EXPOSE 8080
COPY target/devops-integration.jar .
ENTRYPOINT ["java","-jar","/devops-integration.jar"]