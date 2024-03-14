FROM alpinelinux/docker-cli:latest

LABEL maintainer="wolverinoid <avic.ivanov@gmail.com.com>" \
      org.label-schema.name="docker-stack-deploy" \
      org.label-schema.description="Deploy docker stack" \
      org.label-schema.vendor="kitconcept GmbH" \
      org.opencontainers.image.source="https://github.com/wolverinoid/docker-stack-deploy" \
      org.label-schema.docker.cmd="docker run -rm -v "${PWD}":/github/workspace ghcr.io/wolverinoid/docker-stack-deploy"

RUN apk add --no-cache openssh-client findutils bash

COPY scripts/*.sh /

WORKDIR /github/workspace

ENTRYPOINT [ "/docker-entrypoint.sh" ]
