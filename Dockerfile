FROM adoptopenjdk/openjdk11:alpine-jre  
ARG JAR_FILE=target/example.smallest-0.0.1-SNAPSHOT.war
WORKDIR /opt/app  
COPY ${JAR_FILE} app.war 
EXPOSE 127.0.0.1:9091:9091 9092:9092 9090:8080
ENTRYPOINT ["java","-jar","app.war"]  
