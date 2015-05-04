# Kibana4 Docker image

To configure the Elasticsearch URL pass in the environment variable `ELASTICSEARCH_URL`:

    docker run -d -p 5601:5601 -e ELASTICSEARCH_URL=http://192.168.1.1:9200 grumpy-docker/kibana:4.0.2
