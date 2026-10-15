#!/bin/bash
set -euo pipefail

echo "Creating Kafka Topics..."

docker exec -it kafka1 /opt/kafka/bin/kafka-topics.sh \
    --bootstrap-server kafka1:9092 \
    --create --topic bronze-interactions \
    --if-not-exists \
    --partitions 10 --replication-factor 2

docker exec -it kafka1 /opt/kafka/bin/kafka-topics.sh \
    --bootstrap-server kafka1:9092 \
    --create --topic dead-letter-interactions \
    --if-not-exists \
    --partitions 10 --replication-factor 2

echo "Topics are created idempotently. If not printed then it already exists."


