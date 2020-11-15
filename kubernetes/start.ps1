"Aguarde um momento, estamos iniciando o seu ambiente kubernetes"
"Aplicando o configmap..."
kubectl apply -f ./.k8s/configmap.yaml
"Aplicando o deployment..."
kubectl apply -f ./.k8s/deployment.yaml
"Aplicando o autoscale do deployment"
kubectl autoscale deployment idwall-deployment --min=1 --max=8 --cpu-percent=65
"Aplicando o service..."
kubectl apply -f ./.k8s/service.yaml
"Instalando o Nginx Ingress Controller"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.41.2/deploy/static/provider/cloud/deploy.yaml
"Configurando o servico no ingress controller"
kubectl apply -f ./.k8s/ingress-controller.yaml
"O ambiente Kubernetes esta diponivel em http://localhost:3000 e http://localhost"
