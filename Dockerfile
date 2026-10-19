FROM golang:1.27.2-alpine@sha256:f92b6ef800e499660581efdabdf25d9d817a9d124eaf900924f0504e7e27e12d

ENV CGO_ENABLED=0

WORKDIR /go/src/github.com/sensiblecodeio/https-redirect

COPY . .

RUN go install -v -buildvcs=false
