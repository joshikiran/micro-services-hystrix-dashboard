FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} hystrix-dashboard.jar
ENTRYPOINT ["java","-jar","/hystrix-dashboard.jar"]