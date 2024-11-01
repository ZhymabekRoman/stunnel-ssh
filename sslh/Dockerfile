FROM alpine:3.17
RUN apk add --no-cache sslh --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community && \
    mkdir /opt/sslh

# USER sslh
WORKDIR /opt/sslh

# COPY sslh.conf /etc/default/sslh
# ARG DAEMON_OPTS
ENTRYPOINT ["/usr/sbin/sslh", "--foreground", "--user", "root", "--listen", "0.0.0.0:2243", "--ssh", "dropbear-service:822" ]
# , "--tls", "https-service:8443"]
