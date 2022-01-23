FROM openjdk:11
#EXPOSE 8080
#ADD target/myfirstapplication.jar myfirstapplication.jar
#ENTRYPOINT ["java","-jar","/myfirstapplication.jar"]
#FROM anudevi14/myfirstapplication:v10
#RUN pip install redis
#ADD /myFirstProject /app
#FROM openjdk:16-alpine3.13

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
