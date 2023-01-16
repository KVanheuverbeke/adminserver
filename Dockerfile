FROM adoptopenjdk/openjdk11:alpine-jre
LABEL maintainer="karl.vanheuverbeke@telenet.be"
EXPOSE 9080
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]