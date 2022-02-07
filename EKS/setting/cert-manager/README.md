```
helm repo add jetstack https://charts.jetstack.io
```

```
helm install cert-manager jetstack/cert-manager \
--namespace kube-system \
--values cert.yml
```

```
helm upgrade cert-manager jetstack/cert-manager \
--namespace kube-system \
--values cert-manager_values.yml
```