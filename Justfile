start-dev-cluster:
    chmod +x ./scripts/start-dev-kind-cluster.sh
    ./scripts/start-dev-kind-cluster.sh

stop-dev-cluster:
    kind delete cluster --name realtime-recsys-dev

uuidgen:
    uuidgen | tr '[:upper:]' '[:lower:]'