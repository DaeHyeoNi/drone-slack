FROM --platform=$BUILDPLATFORM alpine:latest

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ARG TARGETARCH
COPY bin/drone-slack-${TARGETARCH} /bin/drone-slack
ENTRYPOINT ["/bin/drone-slack"]
