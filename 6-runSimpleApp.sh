#!/bin/bash
### project to run
kubectl create namespace test-app
kubectl apply -n test-app -f ngnix/ngnix-deployment.yaml
kubectl apply -n test-app -f ngnix/ngnix-service.yaml

### to see the logs
kubectl -n test-app get pods

### to see a specific pod log 
kubectl logs nginx-deployment-57d84f57dc-k62kx

#### install monitor
kubectl apply -f https://raw.githubusercontent.com/techiescamp/kubeadm-scripts/main/manifests/metrics-server.yaml
kubectl top nodes


