# Goals

- Basic about microservices
- Service mesh knownledge: https://www.toptal.com/kubernetes/service-mesh-comparison
- Spring zul gateway and spring consul
- Deploy on kubernestes

# Refs  
- https://piotrminkowski.com/2019/11/06/microservices-with-spring-boot-spring-cloud-gateway-and-consul-cluster/
- https://github.com/hashicorp-demoapp
- https://learn.hashicorp.com/tutorials/consul/kubernetes-consul-design-patterns?in=consul/microservices
- https://github.com/piomin/sample-spring-cloud-consul


# ENV for mac
- Install minikube
- Create name space
  ```console
  kubectl create namespace micro-spring-cloud-consul
  ```
- Label the namespace(s), where you would like to enable Consul Service Mesh.
  ```
  kubectl label namespace micro-spring-cloud-consul connect-inject=enabled
- Install consul in to micro-spring-cloud-consul name space
  
  ```console
  helm install consul hashicorp/consul --create-namespace --namespace micro-spring-cloud-consul --values ./k8s/heml/consul/config.yaml
  kubectl port-forward service/consul-server --namespace micro-spring-cloud-consul 8500:8500
  ```

- Install 
  ``` console
  sh build.sh
  sh deploy.sh
- Access
  ``` console
  kubectk get service
  ```
  Access ${minikube ip}:gateway-node-port/account/all,...
  