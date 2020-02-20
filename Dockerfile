FROM gcc:7.5.0

COPY hello_cicd.c /srv/hello_cicd.c

WORKDIR /srv

RUN gcc hello_cicd.c -o prog

CMD ["./prog"]
