FROM openjdk:11
EXPOSE 8080
COPY /var/lib/jenkins/workspace/java-maven-k8s-docker/target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
