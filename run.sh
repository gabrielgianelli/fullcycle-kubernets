docker rm -f $(docker ps -q)
kind create cluster --config=k8s/kind.yaml --name=fullcycle
kubectl apply -f k8s/configmap-env.yaml
kubectl apply -f k8s/configmap-games.yaml
kubectl apply -f k8s/secret.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/metrics-server.yaml
kubectl apply -f k8s/hpa.yaml
