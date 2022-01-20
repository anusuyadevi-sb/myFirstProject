FROM openjdk:11
EXPOSE 8080
ADD target/myfirstapp:1.0.0.jar myfirstapp:1.0.0.jar
ENTRYPOINT ["java","-jar","/myfirstapp:1.0.0.jar"]
FROM anudevi14/myfirstapp:1.0.0
#RUN pip install redis
#ADD /myFirstProject /app
