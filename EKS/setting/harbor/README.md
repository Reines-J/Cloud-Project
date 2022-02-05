```
helm repo add harbor https://helm.goharbor.io
```

```
helm install harbor harbor/harbor \
--namespace repo \
--values harbor_values.yml
```

```
helm upgrade harbor harbor/harbor \
--namespace repo \
--values harbor_values.yml
```
