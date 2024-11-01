FROM alpine:3.14
RUN apk add --no-cache stunnel && \
    mkdir /opt/stunnel

USER stunnel
WORKDIR /opt/stunnel

COPY stunnel.pem /etc/stunnel/stunnel.pem
COPY stunnel.conf /etc/stunnel/stunnel.conf

ENTRYPOINT ["stunnel", "/etc/stunnel/stunnel.conf"]