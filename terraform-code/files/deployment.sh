docker build -t petclinic:latest -f "./Dockerfile"
docker-compose -f "./docker-compose.yaml" up -d
