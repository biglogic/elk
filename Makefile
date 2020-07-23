SHELL := /bin/bash

run-es:
	docker rm -f elasticsearch || true 
	docker run -d --name elasticsearch --net br0 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.8.0

run-kibana:
	docker rm -f kibana || true 
	docker run -d --name kibana --link elasticsearch --net br0 -p 5601:5601 -e "ELASTICSEARCH_HOSTS=http://elasticsearch:9200" kibana:7.8.0 
