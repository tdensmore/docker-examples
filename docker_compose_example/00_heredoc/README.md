# HEREDOC

Dockerfiles allow the use of HEREDOC notation to inline complex scripting.

```
RUN <<EOF
apt-get update
apt-get upgrade -y
apt-get install -y ...
EOF
```

[documentation](https://www.docker.com/blog/introduction-to-heredocs-in-dockerfiles/)
