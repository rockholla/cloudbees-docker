FROM maven:3.5.2-jdk-8

RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    apt-get install -y ca-certificates && \
    apt-get install -y curl && \
    apt-get install -y software-properties-common && \
    apt-get install -y git && \
    apt-get install -y expect && \
    apt-get install -y jq

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

RUN apt-get update
RUN apt-get install -y docker-ce

COPY config /root/config
COPY .bashrc /root/.bashrc

VOLUME /root/.m2
VOLUME /root/bin
VOLUME /root/insights
VOLUME /root/shinobi-tools
VOLUME /root/support

WORKDIR /root

ENTRYPOINT ["tail"]
CMD ["-f", "/dev/null"]
