FROM golang:1.21-alpine AS builder

WORKDIR /build

RUN apk add --no-cache git

RUN git clone https://github.com/mukswilly/udpgw .

WORKDIR /build/cmd

RUN go build -o udpgw

FROM alpine:latest

WORKDIR /app

COPY --from=builder /build/cmd/udpgw .

RUN adduser -D udpgw
USER udpgw

COPY udpgw.json .

EXPOSE 7300
ENTRYPOINT ["./udpgw"]
CMD ["run"]