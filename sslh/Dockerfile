FROM alpine:3.17
RUN apk add --no-cache sslh openssl --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community && \
    mkdir /opt/sslh

WORKDIR /opt/sslh

RUN USERNAME=$(openssl rand -hex 4) && \
    PASSWORD=$(openssl rand -base64 12) && \
    apk --no-cache add dropbear && \
    mkdir -p /etc/dropbear && \
    mkdir -p /home/$USERNAME && \
    adduser -s /bin/sh -D $USERNAME --home /home/$USERNAME && \
    echo "$USERNAME:$PASSWORD" | chpasswd && \
    chown -R $USERNAME:$USERNAME /home/$USERNAME && \
    adduser -S -D -H -s /sbin/nologin sslh && \
    echo "Generated credentials - Username: $USERNAME Password: $PASSWORD" > /opt/sslh/credentials.txt

USER sslh
COPY entrypoint.sh /opt/sslh/entrypoint.sh
ENTRYPOINT [ "/opt/sslh/entrypoint.sh" ]
