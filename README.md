### Run elasticsearch container 

```
docker rm -f elasticsearch; docker run -d --name elasticsearch --net br0 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.8.0
 
```
edit environment variable with -e  

### Run kibana container 

```
docker rm -f kibana; docker run -d --name kibana --link elasticsearch --net br0 -p 5601:5601 -e "ELASTICSEARCH_HOSTS=http://elasticsearch:9200" kibana:7.8.0
```
## Download filebeat
- extract filebeat.tar.gz 
- edit filebeat.yml
 

