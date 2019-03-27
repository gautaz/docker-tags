FROM alpine:3.9.2

COPY docker-tags /

RUN \
    apk add --no-cache curl jq && \
    adduser -D user && \
    chmod a+x /docker-tags

USER user

ENTRYPOINT ["/docker-tags"]
