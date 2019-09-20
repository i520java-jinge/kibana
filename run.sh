#!/bin/sh
export PORT=${PORT:-5601}
export ES_URL=${ELASTICSEARCH_URL:-"http://localhost:9200"}
 
echo "server.host: \"0\""
echo "server.host: \"0\"" >> ${KIBANA_HOME}/config/kibana.yml
echo "server.name: kibana-logging"
echo "server.name: kibana-logging" >> ${KIBANA_HOME}/config/kibana.yml
echo "server.port: ${PORT}"
echo "server.port: ${PORT}" >> ${KIBANA_HOME}/config/kibana.yml
echo "elasticsearch.url: ${ES_URL}"
echo "elasticsearch.url: ${ES_URL}" >> ${KIBANA_HOME}/config/kibana.yml
 
sh ${KIBANA_HOME}/bin/kibana
