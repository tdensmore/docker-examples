HUB_PAT_TOKEN=$DOCKERHUB_TOKEN

cagent run -d --log-file ./debug.log \
    ./fetch.agent.yml -c "summarize"
