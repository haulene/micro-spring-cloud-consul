# Goals

- Basic about microservices
- Service mesh knownledge: https://www.toptal.com/kubernetes/service-mesh-comparison
- Spring zul gateway and spring consul
- Deploy on kubernestes

# Branches:
- master: user consule service discovery
- use_kubernetes-service-discovery: use kubernetes-service-discovery and consule service mesh

# Refs  
- https://github.com/AndriyKalashnykov/spring-microservices-k8s/tree/master
- https://piotrminkowski.com/2020/09/10/spring-cloud-kubernetes-load-balancer-guide/
- https://tanzu.vmware.com/developer/guides/app-enhancements-spring-k8s/
- https://github.com/piomin/sample-spring-microservices-kubernetes/tree/hybrid
- https://github.com/hashicorp-demoapp
- https://learn.hashicorp.com/tutorials/consul/kubernetes-consul-design-patterns?in=consul/microservices
- https://github.com/piomin/sample-spring-cloud-consul


# ENV for mac
- Install minikube
- Create name space
  ```console
  <!-- kubectl create namespace micro-spring-cloud-consul -->
  ```
- Label the namespace(s), where you would like to enable Consul Service Mesh.
  ```
  kubectl label namespace default connect-inject=enabled
  kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default
- Install consul in to default name space
  
  ```console
  helm install consul hashicorp/consul --namespace default --values ./k8s/heml/consul/config.yaml
  kubectl port-forward service/consul-server --namespace default 8500:8500
  ```

- Install 
  ``` console
  sh build.sh
  sh deploy.sh
- Access
  ``` console
  kubectl get service
  ```
  Access ${minikube ip}:gateway-node-port/account/all,...
  