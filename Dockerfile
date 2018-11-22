FROM node:8.12.0
WORKDIR /usr/local/bin/
COPY --from=jenkins/jnlp-slave:3.27-1 /usr/local/bin/jenkins-slave .
ENTRYPOINT ["jenkins-slave"]