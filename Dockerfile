FROM amazon/opendistro-for-elasticsearch:0.8.0
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/spinscale/elasticsearch-ingest-opennlp/releases/download/6.6.2.1/ingest-opennlp-6.6.2.1.zip