FROM adoptopenjdk/openjdk11:alpine-jre  
ARG JAR_FILE=target/example.smallest-0.0.1-SNAPSHOT.war
WORKDIR /opt/app  
COPY ${JAR_FILE} app.war  
ENTRYPOINT ["java","-jar","app.war"]  
