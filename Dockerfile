FROM golang:1.22.0-alpine3.19 as builder

WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o server

FROM alpine:3.19

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8081

CMD ["./server"]
