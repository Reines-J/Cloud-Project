```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

```
helm dependency update
helm install prometheus-stack prometheus-community/kube-prometheus-stack \
--namespace monitoring \
--values prometheusstack_values.yml
```

```
helm dependency update
helm upgrade prometheus-stack prometheus-community/kube-prometheus-stack \
--namespace monitoring \
--values prometheusstack_values.yml
```