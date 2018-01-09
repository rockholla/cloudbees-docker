FROM cloudbees/jenkins-operations-center:latest

RUN mkdir -p /var/jenkins_home/.ssh && \
    chmod 0700 /var/jenkins_home/.ssh
COPY --chown=jenkins id_rsa /var/jenkins_home/.ssh/id_rsa
