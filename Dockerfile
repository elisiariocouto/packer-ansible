FROM alpine:3
LABEL maintainer="elisiario.f.couto@gmail.com"

ENV PACKER_VERSION=1.7.7

RUN apk add --no-cache ansible && \
    wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /bin && \
    rm -rf packer_${PACKER_VERSION}_linux_amd64.zip
