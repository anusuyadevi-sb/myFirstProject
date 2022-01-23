#FROM openjdk:11
#EXPOSE 8080
#ADD target/myfirstapplication.jar myfirstapplication.jar
#ENTRYPOINT ["java","-jar","/myfirstapplication.jar"]
#FROM anudevi14/myfirstapplication:v10
#RUN pip install redis
#ADD /myFirstProject /app
#FROM openjdk:16-alpine3.13

#WORKDIR /app

##COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN ./mvnw dependency:go-offline

#COPY src ./src

#CMD ["./mvnw", "spring-boot:run"]

# Build stage
FROM maven:2.6.3-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean test package

# Package stage
#FROM openjdk:8-jdk-alpine
FROM openjdk:11
COPY --from=build /home/app/target/myfirstapplication.jar myfirstapplication.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","myfirstapplication.jar"]
