FROM openjdk:11
EXPOSE 8080
ADD target/myfirstapplication.jar myfirstapplication.jar
ENTRYPOINT ["java","-jar","/myfirstapplication.jar"]