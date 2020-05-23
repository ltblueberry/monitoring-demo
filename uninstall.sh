#!/bin/bash

kubectl delete -f prometheus/
kubectl delete -f grafana/
kubectl delete -f nginx/
sleep 20
kubectl delete -f namespace.yaml