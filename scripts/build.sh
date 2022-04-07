cd ../account-service

mvn clean package -Dmaven.test.skip=true
eval $(minikube docker-env)
docker build -t haulene/micro-spring-cloud-consul/account-service:1.1 .

cd ../gateway-service

mvn clean package -Dmaven.test.skip=true
eval $(minikube docker-env)
docker build -t haulene/micro-spring-cloud-consul/gateway-service:1.1 .

cd ../order-service

mvn clean package -Dmaven.test.skip=true
eval $(minikube docker-env)
docker build -t haulene/micro-spring-cloud-consul/order-service:1.1 .

cd ../product-service

mvn clean package -Dmaven.test.skip=true
eval $(minikube docker-env)
docker build -t haulene/micro-spring-cloud-consul/product-service:1.1 .

cd ../customer-service

mvn clean package -Dmaven.test.skip=true
eval $(minikube docker-env)
docker build -t haulene/micro-spring-cloud-consul/customer-service:1.1 .