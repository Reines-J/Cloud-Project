```
helm repo add external-dns https://kubernetes-sigs.github.io/external-dns/
```

```
helm install external-dns external-dns/external-dns \
--namespace kube-system \
--values external-dns.yml
```

```
helm upgrade external-dns external-dns/external-dns \
--namespace kube-system \
--values external-dns.yml
```
