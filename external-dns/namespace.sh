#!/bin/bash

NGINXDEMO_NS="test"
kubectl get namespaces | grep -q $NGINXDEMO_NS || kubectl create namespace $NGINXDEMO_NS

kubectl create --filename repo_ingress/ingress.yaml --namespace ${NGINXDEMO_NS:-"default"}
kubectl get ingress --watch --namespace ${NGINXDEMO_NS:-"default"}

kubectl create --filename repo_service/nginx.yaml --namespace ${NGINXDEMO_NS:-"default"}
kubectl get service nginx --namespace ${NGINXDEMO_NS:-"default"}
