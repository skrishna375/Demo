FROM java:8
LABEL version="1.0"

ARG APP_BINARY="spring-0.0.1-SNAPSHOT.jar"

RUN mkdir "/apps"

ADD ./target/${APP_BINARY} /apps/app_profile.jar

EXPOSE 9191

ENTRYPOINT ["java","-jar","/apps/app_profile.jar"]
