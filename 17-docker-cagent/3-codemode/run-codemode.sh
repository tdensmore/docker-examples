HUB_PAT_TOKEN=$DOCKERHUB_TOKEN

cagent run -d --log-file ./debug.log \
    ./codemode-agent.yml -c "primeissues"
