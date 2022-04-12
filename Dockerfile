FROM openjdk:11
RUN mkdir app
ARG JAR_FILE
ADD /target/bearer-1.0.jar /app/bearer-1.0.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/bearer-1.0.jar"]
