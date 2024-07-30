# Dockerfile used for the actual dev environment container
FROM docker:20.10

# Configure user permissions for vscode
RUN adduser -s /bin/sh -D vscode && \
    addgroup docker &&\
    adduser vscode docker && \
    mkdir /tmp/.config && \
    chown -R vscode /tmp/.config

RUN apk add python3 mysql-client git

# Do something to keep the container alive
CMD ["tail", "-f", "/dev/null"]