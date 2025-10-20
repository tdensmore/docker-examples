CLICKHOUSE_PASSWORD='';

cagent run ./clickhouse-agent.yml "what is the highest temperature ever recorded?" --env-from-file .env
