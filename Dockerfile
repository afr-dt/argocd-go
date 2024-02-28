# Multi-stage build for the builder stage
FROM --platform=$BUILDPLATFORM golang:1.22.0-alpine3.19 as builder

WORKDIR /app

COPY . .

RUN go mod download
RUN GOARCH=arm go build -o server

# Final stage
FROM --platform=$BUILDPLATFORM arm32v6/alpine:3.19

WORKDIR /app

COPY --from=builder /app/server .

EXPOSE 8081

CMD ["./server"]
