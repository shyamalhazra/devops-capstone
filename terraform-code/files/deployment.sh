cp ../Dockerfile .
cp ../docker-compose.yaml .
docker build -t petclinic:latest .
docker-compose up -d
