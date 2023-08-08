FROM alpine:3.18.3
RUN mkdir /docker
COPY update.sh /docker

#Update package mgr and add sshd configurations
RUN chmod +xwr /docker/update.sh \
    && sh /docker/update.sh \
    && apk add --update --no-cache openssh \
    && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config \
    && echo 'root:password' | chpasswd \
    && sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config 

#detail entrypoint
COPY entrypoint.sh /
RUN chmod +x -v /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22