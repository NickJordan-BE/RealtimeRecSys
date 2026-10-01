#!/bin/bash
set -euo pipefail

# Constants
readonly NAMESPACES=("kafka" "api-gateway")

echo "Creating Kind Local Dev Cluster..."
kind create cluster --config ./dev/kind/kind-config.yaml

kubectl config set-context kind-realtime-recsys-dev

echo "Creating namespaces..."
for namespace in "${NAMESPACES[@]}"
do
    kubectl create namespace $namespace
done
