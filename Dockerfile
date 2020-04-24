FROM adoptopenjdk/openjdk11:jdk-11.0.3_7-slim

RUN curl -LO https://search.maven.org/remotecontent?filepath=sqlline/sqlline/1.9.0/sqlline-1.9.0-jar-with-dependencies.jar
RUN curl -LO https://search.maven.org/remotecontent?filepath=com/microsoft/sqlserver/mssql-jdbc/8.2.2.jre11/mssql-jdbc-8.2.2.jre11.jar

RUN mkdir /r

ENTRYPOINT ["java", "-classpath", "sqlline-1.9.0-jar-with-dependencies.jar:mssql-jdbc-8.2.2.jre11.jar", "sqlline.SqlLine"]
