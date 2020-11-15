"Aguarde um momento, estamos encerrando o seu ambiente Kubernetes"
"Removendo o service..."
kubectl delete service idwall-service
"Removendo o autoscaler"
kubectl delete hpa idwall-deployment
"Removendo o deployment..."
kubectl delete -f .\.k8s\deployment.yaml
"Removendo o configmap..."
kubectl delete -f .\.k8s\configmap.yaml
"O seu ambiente Kubernetes foi encerrado"
