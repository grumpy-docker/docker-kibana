#!/bin/bash

if [[ -n "${ELASTICSEARCH_URL}" ]]; then
    sed -i 's|^# elasticsearch_url:.*$|elasticsearch_url: '"\"${ELASTICSEARCH_URL}\""'|' /opt/kibana/config/kibana.yml
elif [[ -n "${ELASTICSEARCH_SERVICE_NAME}" ]]; then
    SVC_HOST=${ELASTICSEARCH_SERVICE_NAME}_SERVICE_HOST
    SVC_PORT=${ELASTICSEARCH_SERVICE_NAME}_SERVICE_PORT
    sed -i 's|^elasticsearch_url:.*$|elasticsearch_url: '"\"http://${!SVC_HOST}:${!SVC_PORT}\""'|' /opt/kibana/config/kibana.yml
fi

exec /opt/kibana/bin/kibana
