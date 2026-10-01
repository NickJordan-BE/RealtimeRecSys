start-dev-cluster:
    chmod +x ./scripts/start-dev-cluster.sh
    ./scripts/start-dev-cluster.sh

stop-dev-cluster:
    kind delete cluster --name realtime-recsys-dev