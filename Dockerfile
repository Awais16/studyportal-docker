#using openJDK latest version
FROM openjdk:latest

#setting working directory to app
WORKDIR /app

#coping jar file of study portal
COPY studyportal.jar app/studyportal.jar

#some configuration enviroment variable for study portal
#overrides DB_URL in docker compose
#ENV DB_URL jdbc:mysql://localhost:3307/processed?rewriteBatchedStatements=true&serverTimezone=Europe/Berlin
ENV DB_USERNAME root
ENV DB_PASSWORD root

ENV STUDY_PORTAL_ADMIN_USERNAME admin
ENV STUDY_PORTAL_ADMIN_PASSWORD admin


#exposing port to world outside of container
EXPOSE 80

# run jar file
CMD java -jar ./app/studyportal.jar


