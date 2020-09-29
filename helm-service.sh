helm uninstall mongo
helm uninstall mysql
helm uninstall Kafka
helm uninstall redis

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm install mongo bitnami/mongodb --set persistence.size=512Mi --set auth.enabled=false
helm install mysql stable/mysql --set persistence.size=512Mi --set mysqlRootPassword=p@ss
helm install redis bitnami/redis --set master.persistence.size=512Mi --set slave.persistence.size=512Mi --set usePassword=false
helm install kafka bitnami/kafka --set persistence.size=512Mi
