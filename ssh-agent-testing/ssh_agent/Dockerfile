FROM java:8

RUN apt-get update

RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh
COPY authorized_keys /root/.ssh/authorized_keys
RUN chmod 0644 /root/.ssh/authorized_keys && \
    apt-get install -y openssh-server

RUN mkdir /var/run/sshd
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
