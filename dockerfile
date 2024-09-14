FROM eclipse-temurin:11.0.24_8-jdk-alpine
WORKDIR /app
COPY . /app
RUN ["sh", "build.sh"]
ENV PATH="/opt/gradle/gradle-8.0/bin:${PATH}"