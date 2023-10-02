# Create a new Swarm
docker swarm init --advertise -addr 192.168.162.10 (On Manager Node)
docker swarm init --advertise -addr 192.168.162.11 (On Worker Node)

# Generate token (Copy and paste the token in worker node)
docker swarm join-token worker

# On worker node
docker swarm join \ --token copy and paste token 192.168.162.101:2377 (2377 for TCP communication betwn nodes)

# Inspect nodes
docker node inspect node-id --pretty

# Promote and Demote the nodes
docker node promote node-name (will be promoted to manager node)
docker node demote manager01 (manager node will be demoted to worker node)

# Deploy service to swarm
docker service create -d --name nginx-service -p 8082:80 --replicas 2 nginx:latest 

# Inspect docker service (on manager node)
docker service inspect service-name

# Scaling the service
docker service scale service-name=no.of tasks to run


