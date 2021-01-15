FROM postgres:11.10
ENV POSTGRES_PASSWORD=aact_pwd
ENV POSTGRES_USER=aact_user
ENV POSTGRES_DB=aact 
RUN apt-get update && apt-get install -y unzip wget
COPY restore.sh /docker-entrypoint-initdb.d/
