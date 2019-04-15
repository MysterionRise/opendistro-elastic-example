# Example of OpenDistro Elastic cluster 

Docker compose example and configurations for fully featured [Amazon Opendistro Elastic](https://opendistro.github.io/for-elasticsearch/) cluster with 2 nodes of Elastic + 1 node of Kibana

## How To

You would need to install [Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/)

### Build Docker image (to support custom plugins)

```
docker build --tag=odfe-custom-plugin:0.1 .
```

### Update docker-compose.yml

Update `docker-compose.yml` with proper image for Elasticsearch

```
...
image: odfe-custom-plugin:0.1
...
```


### Start cluster 

```
docker-compose up
```

After some time you will have Kibana available at this [URL](http://localhost:5601/app/kibana#/discover)

### Stop cluster

```
docker-compose down
```


## Comparison results of esrally tracks

```
esrally --track=geonames --target-hosts=https://localhost:9200 --pipeline=benchmark-only --client-options="use_ssl:false,basic_auth_user:'admin',basic_auth_password:'admin'"
```
