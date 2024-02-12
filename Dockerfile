FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot_aws_deploy.jar springboot_aws_deploy.jar
ENTRYPOINT ["java","-jar","/springboot_aws_deploy.jar"]