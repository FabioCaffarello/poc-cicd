FROM golang:1.17

WORKDIR /go/src/app
COPY . .
RUN GOOS=linux go build -ldflags="-s -w"
EXPOSE 3000
ENTRYPOINT ["go", "run", "server"]