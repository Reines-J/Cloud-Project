```
helm repo add eks https://aws.github.io/eks-chart
```

```
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
--namespace kube-system \
--values controller_values.yml
```

```
helm upgrade aws-load-balancer-controller eks/aws-load-balancer-controller \
--namespace kube-system \
--values controller_values.yml
```