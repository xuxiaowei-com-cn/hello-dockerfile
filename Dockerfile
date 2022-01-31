FROM openjdk:8u312-jre

WORKDIR /app
COPY target/hello-dockerfile-*-SNAPSHOT.jar app.jar

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=1001","-jar","/app/app.jar"]
