FROM scratch
WORKDIR /home/mpdev/projects/go-app

COPY ./fullCycleRocks /home/mpdev/projects/go-app

ENTRYPOINT ["./fullCycleRocks"]
