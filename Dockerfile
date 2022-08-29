FROM openjdk:18.0.2.1-jdk
VOLUME /tmp
ARG JAR_FILE=target/authorization-1.0.0.jar
COPY ${JAR_FILE} authorization-1.0.0.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Dserver.port=8080 -Djava.security.egd=file:/dev/./urandom -jar /authorization-1.0.0.jar"]
