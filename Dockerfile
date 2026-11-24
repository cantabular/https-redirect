FROM golang:1.27.4-alpine3.24@sha256:70bd7ddea8b6cbe5d6943cde279d6b67feb10cc924fb9100d1d8757c1575b280

ENV CGO_ENABLED=0

WORKDIR /go/src/github.com/sensiblecodeio/https-redirect

COPY . .

RUN go install -v -buildvcs=false
