FROM openjdk:11.0.4

VOLUME /tmp
ARG JAR_FILE
ARG DOCKERIZE_VERSION
ARG ARTIFACT_NAME
ARG EXPOSED_PORT
ARG AWS_XRAY_TRACING_NAME
ENV SPRING_PROFILES_ACTIVE docker

EXPOSE 8888

COPY /target/qnrbldr-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]