setup-container:#setup elasticsearch and kibana container
        docker rm -f elasticsearch; docker run -d \ #--net to select network
		 --name elasticsearch --net br0 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.8.0 
        docker rm -f kibana; docker run -d \ #--link key to connect container 
		 --name kibana --link elasticsearch --net br0 -p 5601:5601 -e "ELASTICSEARCH_HOSTS=http://elasticsearch:9200" kibana:7.8.0 
