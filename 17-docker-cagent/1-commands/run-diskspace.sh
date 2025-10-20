HUB_PAT_TOKEN=$DOCKERHUB_TOKEN

cagent run -d --log-file ./debug.log \
    ./command-agent.yml -c "diskspace"
