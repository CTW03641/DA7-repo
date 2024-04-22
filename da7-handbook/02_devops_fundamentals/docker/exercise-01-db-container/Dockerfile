FROM postgres:16.2

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=academy

COPY ./init.sql /docker-entrypoint-initdb.d/
