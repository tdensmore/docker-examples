HUB_PAT_TOKEN=$DOCKERHUB_TOKEN

cagent run -d --log-file ./debug.log \
    ./dockerhub-agent.yml "list my repos on DockerHub"
