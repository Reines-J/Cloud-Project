``
helm repo add argo https://argoproj.github.io/argo-helm
```

```
helm dependency update
helm install argocd argo/argo-cd \
--namespace cd \
--values argocd_values.yml
```

```
helm dependency update
helm upgrade argocd argo/argo-cd \
--namespace cd \
--values argocd_values.yml
```

```
kubectl -n cicd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```