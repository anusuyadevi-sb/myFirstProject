#FROM openjdk:11
#EXPOSE 8080
#ADD target/testapp.jar testapp.jar
#ENTRYPOINT ["java","-jar","/testapp.jar"]
FROM anudevi14/testapp1
#RUN pip install redis
#ADD /myFirstProject /app
