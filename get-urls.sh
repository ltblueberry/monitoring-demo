#!/bin/bash

MONITORING_SERVICES=$(kubectl get services -n monitoring-demo)
DEFAULT_SERVICES=$(kubectl get services -n default)

PROMETHEUS_EXTERNAL_IP=$(echo "$MONITORING_SERVICES" | grep prometheus | awk '{print $4}')
PROMETHEUS_PORT=$(echo "$MONITORING_SERVICES" | grep prometheus | awk '{print $5}')
GRAFANA_EXTERNAL_IP=$(echo "$MONITORING_SERVICES" |  grep grafana | awk '{print $4}')
GRAFANA_PORT=$(echo "$MONITORING_SERVICES" | grep grafana | awk '{print $5}')
NGINX_EXTERNAL_IP=$(echo "$DEFAULT_SERVICES" | grep gateway | awk '{print $4}')
NGINX_PORT=$(echo "$DEFAULT_SERVICES" | grep gateway | awk '{print $5}')

echo "Prometheus URL: ${PROMETHEUS_EXTERNAL_IP}:${PROMETHEUS_PORT%:*}"
echo "Grafana URL: ${GRAFANA_EXTERNAL_IP}:${GRAFANA_PORT%:*}"
echo "Nginx URL: ${NGINX_EXTERNAL_IP}:${NGINX_PORT%:*}"
echo ""