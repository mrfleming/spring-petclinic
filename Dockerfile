FROM openjdk:8u191-alpine
LABEL author="Eric Fleming"

EXPOSE 8080
COPY /target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar ./
ENTRYPOINT [ "java", "-jar", "./spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar" ]
CMD ["--spring.profiles.active=mysql"]
