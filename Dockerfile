FROM golang:latest

RUN mkdir /go/src/app

WORKDIR /go/src/app

COPY . .

RUN go get ./

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]
