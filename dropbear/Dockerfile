FROM alpine:3.17
WORKDIR /app

ARG SSHUSER=myuser
ARG SSH_PASSWORD=changeme

RUN apk --no-cache add dropbear &&\
    mkdir -p /etc/dropbear &&\
    mkdir -p /home/$SSHUSER &&\
    adduser -s /bin/sh -D $SSHUSER --home /home/$SSHUSER &&\
    echo "$SSHUSER:$SSH_PASSWORD" | chpasswd &&\
    chown -R $SSHUSER:$SSHUSER /home/$SSHUSER

CMD ["/usr/sbin/dropbear -RFEw -p 822"]