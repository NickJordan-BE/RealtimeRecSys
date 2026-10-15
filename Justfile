start-dev-cluster:
    chmod +x ./scripts/start-dev-kind-cluster.sh
    ./scripts/start-dev-kind-cluster.sh

stop-dev-cluster:
    kind delete cluster --name realtime-recsys-dev

start-compose-kafka-cluster:
    docker compose --file kafka/docker-compose.yaml up

stop-compose-kafka-cluster:
    docker compose --file kafka/docker-compose.yaml down 

init-compose-kafka-topics:
    chmod +x ./scripts/init-kafka-topics.sh
    ./scripts/init-kafka-topics.sh

uuidgen:
    uuidgen | tr '[:upper:]' '[:lower:]'