
# Installation

###Pre-requisite
   
  - Valid azure subscribtion
  - Create kubernetes cluster in azure cloud
  - Install Istio 1.7.1
  - Valid docker images for repective services
  - Helm 
   
###Istio

   - Install istio command:
   
   ```sh
     $ curl -L https://istio.io/downloadIstio | sh -
     $ export PATH=$PWD/istio-1.7.1/bin:$PATH
     $ istioctl install --set profile=demo
     $ kubectl label namespace default istio-injection=enabled

   ```

###Docker image

Create docker images in respective path:
 
```sh
$ create docker image: docker build -t config-service .
$ create docker image: docker build -t service-registry .
$ create docker image: docker build -t product-service .
$ create docker image: docker build -t user-service .
$ create docker image: docker build -t order-service .
```

Tag docker images:

```sh
$docker tag 4f887efe29b8 palanim/config-service
$docker tag 4f887efe29b8 palanim/service-registry 
$docker tag 4f887efe29b8 palanim/product-service
$docker tag 4f887efe29b8 palanim/user-service 
$docker tag 4f887efe29b8 palanim/order-service 
```

Push docker images:
```sh 
$docker push palanim/config-service
$docker push palanim/service-registry 
$docker push palanim/product-service
$docker push palanim/user-service 
$docker push palanim/order-service 
```
Pull docker images:
```sh
$docker pull palanim/config-service
$docker pull palanim/service-registry 
$docker pull palanim/product-service
$docker pull palanim/user-service 
$docker pull palanim/order-service 
```
###Helm

  - Install helm command:
  
  ```sh
     $ brew install helm
```
  - COmmand for add bitnami, stable repo and install mongo, mysql, redis, kafka:
  
   ```sh
     $ helm repo add bitnami https://charts.bitnami.com/bitnami
     $ helm repo add stable https://kubernetes-charts.storage.googleapis.com/
     $ helm install mongo bitnami/mongodb --set persistence.size=512Mi --set auth.enabled=false
     $ helm install mysql stable/mysql --set persistence.size=512Mi --set mysqlRootPassword=p@ss
     $ helm install redis bitnami/redis --set master.persistence.size=512Mi --set slave.persistence.size=512Mi --set usePassword=false
     $ helm install kafka bitnami/kafka --set persistence.size=512Mi
```
###Deploye Microservice & Other istio services

-  Go to the cd k8s/ and run the command:  
```sh
$kubectl apply -f config-service.yml
$kubectl apply -f service-registry.yml
$kubectl apply -f api-gateway-service.yml
$kubectl apply -f product-service.yml
$kubectl apply -f order-service.yml
$kubectl apply -f user-service.yml

$kubectl apply -f authorization-service.yml
$kubectl apply -f destinationrule-service.yml
$kubectl apply -f mutualTLS-service.yml
$Kubectl apply -f rate-limiting-service.yml
```