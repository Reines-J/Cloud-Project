```
helm repo add bitnami https://charts.bitnami.com/bitnami
```

```
helm install metrics-server bitnami/metrics-server \
--version 0.5.0 \
--namespace kube-system \
--values metric_values.yml
```

```
helm upgrade metrics-server bitnami/metrics-server \
--version 0.5.0 \
--namespace kube-system \
--values metric_values.yml
```