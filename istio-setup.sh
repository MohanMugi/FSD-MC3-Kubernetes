export PATH=$PWD/istio-1.7.1/bin:$PATH
istioctl install --set profile=demo
kubectl label namespace default istio-injection=enabled