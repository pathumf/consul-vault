# consul-vault

docker run -d --name vault --link consul:consul -p 8200:8200 pathumf/vault:latest
docker run -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h node1 --name consul pathumf/consul:latest -server -bootstrap -ui 

#Login to the vault docker 

docker -it exec vault /bin/sh 
run `vault init`

Take any tokens and unseal the vault, youy have provide three tokens do so.

vault unseal < token > 
