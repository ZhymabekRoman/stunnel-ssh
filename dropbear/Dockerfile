# FROM alpine:3.14
# RUN apk add --no-cache dropbear openssl

# ARG USER_NAME
# ARG USER_PASSWORD

# RUN adduser -D -h /home/${USER_NAME} -s /bin/false ${USER_NAME}
# RUN echo "${USER_PASSWORD}" | openssl passwd -1 -stdin | tee /etc/shadow | sed "s/^${USER_NAME}:.*/${USER_NAME}:\$(cat)/" > /etc/shadow

# ENTRYPOINT ["dropbear", "-g", "-p", "822"]

# https://techoverflow.net/2022/12/25/minimal-ssh-server-on-docker-container-using-dropbear/
FROM alpine:3.17
WORKDIR /app
ENV SSHUSER=myuser

# The SSH user to create
RUN apk --no-cache add dropbear &&\
    mkdir -p /home/$SSHUSER/.ssh &&\
    adduser -s /bin/sh -D $SSHUSER --home /home/$SSHUSER &&\
    chown -R $SSHUSER:$SSHUSER /home/$SSHUSER

CMD ["/bin/sh", "-c", "/usr/sbin/dropbear -RFEwgsjk -G ${SSHUSER} -p 822"]
