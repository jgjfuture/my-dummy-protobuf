#! /bin/bash

# NOTICE: Run this scropt from root directory of this project

PROTO_PATH="$(pwd)/proto"

# Generate document json file from proto file
# Using protoc-gen-doc Docker image
find "$PROTO_PATH" -type f -iregex ".*.proto" -printf "%P\0" | \
    xargs -0 \
    docker run --rm \
    -v $(pwd)/docs:/out \
    -v $PROTO_PATH:/protos \
    pseudomuto/protoc-gen-doc --doc_opt=json,my-sample-scheme-docs.json