cd ../k8s
kubectl config set-context --current --namespace=micro-spring-cloud-consul
kubectl delete service account-service
kubectl delete service gateway-service
kubectl delete service product-service
kubectl delete service order-service
kubectl delete service customer-service
kubectl delete deployment account
kubectl delete deployment gateway
kubectl delete deployment product
kubectl delete deployment order
kubectl delete deployment customer
kubectl apply -f apps.config.yaml
kubectl apply -f apps.yaml