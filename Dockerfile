FROM openjdk:12-alpine
ENV context ""
ENV port 8021
ADD /src/main/resources/application.properties //
ADD /target/corejava1.8-with-maven-template-1.0-SNAPSHOT.one-jar.jar //
ENTRYPOINT ["java","-jar", "/corejava1.8-with-maven-template-1.0-SNAPSHOT.one-jar.jar","--server.port=${port}"]