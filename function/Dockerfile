FROM golang:1.18.4-buster

WORKDIR /usr/src/app

COPY function/go.mod ./
RUN go mod download && go mod verify

COPY function/ .
RUN ls -la 
RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]
