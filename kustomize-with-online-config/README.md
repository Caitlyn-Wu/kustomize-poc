# POC: Use existing configmap in yaml at non-pod level setting

## Goal
if there's existing configmap in cluster, how deployment could get setting inside for annotations.

## Setup
- minikube start
- deploy configmap `kubectl apply -f ./kustomize-with-online-config/repo_global_configmap/configmap.yaml`
- deploy nginx `cd ./kustomize-with-online-config/repo_application && kubectl kustomize . | kubectl apply -f -`

## Verify
```
Containers:
  nginx:
    Container ID:   docker://a8dfb005622fc4250cfad118a6da42c4528e760e96be7526ab09a0110597597a
    Image:          nginx:latest
    Image ID:       docker-pullable://nginx@sha256:af296b188c7b7df99ba960ca614439c99cb7cf252ed7bbc23e90cfda59092305
    Port:           80/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Tue, 13 Jun 2023 11:43:43 +0800
    Ready:          True
    Restart Count:  0
    Environment:
      OFFICE_IP:  <set to the key 'OFFICE_IP' of config map 'environment-variables'>  Optional: false
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-g4qbr (ro)
```
the `OFFICE_IP` is get from existing configmap
