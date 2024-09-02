FROM golang:alpine AS builder

WORKDIR /home/mpdev/projects/go-app
COPY ./fullCycleRocks.go /home/mpdev/projects/go-app

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" fullCycleRocks.go


FROM scratch
WORKDIR /home/mpdev/projects/go-app

COPY --from=builder /home/mpdev/projects/go-app /home/mpdev/projects/go-app
ENTRYPOINT ["./fullCycleRocks"]