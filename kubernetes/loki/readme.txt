https://docs.technotim.live/posts/grafana-loki-kubernetes/

helm upgrade --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false,loki.persistence.enabled=true,loki.persistence.storageClassName=longhorn,loki.persistence.size=5Gi --namespace=loki
