#FROM openjdk:11
#EXPOSE 8080
#ADD anudevi14/myfirstapplication.jar myfirstapplication.jar
#ENTRYPOINT ["java","-jar","/myfirstapplication.jar"]
FROM anudevi14/myfirstapplication
RUN pip install redis
ADD /myFirstProject /app
