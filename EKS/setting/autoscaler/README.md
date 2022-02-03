```
helm repo add autoscaler https://kubernetes.github.io/autoscaler
```

```
helm install cluster-autoscaler autoscaler/cluster-autoscaler \
--namespace kube-system \
--values autoscaler_values.yml
```

```
helm upgrade cluster-autoscaler autoscaler/cluster-autoscaler \
--namespace kube-system \
--values autoscaler_values.yml
```