#!/bin/bash

kubectl create -f namespace.yaml
kubectl create -f prometheus/
kubectl create -f grafana/
kubectl create -f nginx/