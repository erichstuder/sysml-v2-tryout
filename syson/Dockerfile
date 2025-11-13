FROM eclipse-temurin:21-jre

COPY syson-application-2025.10.2.jar .

CMD ["java", "-jar", "syson-application-2025.10.2.jar", \
            "--spring.datasource.url=jdbc:postgresql://syson-postgres:5432/syson-db", \
            "--spring.datasource.username=dbuser", \
            "--spring.datasource.password=dbpwd"]

WORKDIR /project
