cd k8s/

kubectl delete service configservice
kubectl delete deployment configservice

kubectl delete service serviceregistry
kubectl delete deployment serviceregistry

kubectl delete service userservice
kubectl delete deployment userservice

kubectl delete service orderservice
kubectl delete deployment orderservice

kubectl delete service productservice
kubectl delete deployment productservice

kubectl apply -f config-service.yml
kubectl apply -f service-registry.yml
kubectl apply -f api-gateway-service.yml
kubectl apply -f product-service.yml
kubectl apply -f order-service.yml
kubectl apply -f user-service.yml

kubectl apply -f authorization-jwt-service.yml
kubectl apply -f destinationrule-service.yml
kubectl apply -f mutualTLS-service.yml
Kubectl apply -f rate-limiting-service.yml
