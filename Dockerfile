FROM openjdk:11
EXPOSE 8080
ADD target/myfirstapplication.jar myfirstapplication.jar
ENTRYPOINT ["java","-jar","/myfirstapplication.jar"]
FROM anudevi14/myfirstapplication:v5
#RUN pip install redis
#ADD /myFirstProject /app
