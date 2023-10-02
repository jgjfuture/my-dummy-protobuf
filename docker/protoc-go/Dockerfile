FROM golang:1.18-alpine

ENV PATH="/usr/local/bin:/usr/bin:${PATH}"

WORKDIR /repo_root

RUN apk add --no-cache git protobuf-dev protoc \
    && go install github.com/golang/protobuf/protoc-gen-go@v1.5.2
