#!/bin/bash
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
### taint single node
kubectl taint nodes --all node-role.kubernetes.io/control-plane-
