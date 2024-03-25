# Getting image
FROM amazoncorretto:8
#port
EXPOSE 8080
# working dir

WORKDIR /usr/src/app

# copy
COPY mvnw .
COPY mvnw.cmd .
COPY .mvn ./.mvn
COPY pom.xml .
COPY src ./src

RUN chmod +x mvnw
RUN ./mvnw package
# run

# CMD ['java', '-jar', './target/docker-example-1.1.3.jar']
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
