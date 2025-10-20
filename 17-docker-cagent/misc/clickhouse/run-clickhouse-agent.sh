CLICKHOUSE_PASSWORD='w0SlwjW_CuVib';

#cagent run ./clickhouse-agent.yml "calucalte the the average tip amount from the nyc_taxi table"
cagent run -d --log-file ./debug.log \
    ./clickhouse-agent.yml "calucalte the the average tip amount from the nyc_taxi table"