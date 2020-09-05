FROM golang:1.15-alpine

COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux go build -o hello main.go

CMD ["./hello"]
