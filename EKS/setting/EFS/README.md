```
helm repo add aws-efs-csi-driver https://kubernetes-sigs.github.io/aws-efs-csi-driver/
```

```
helm install efs-csi-driver aws-efs-csi-driver/aws-efs-csi-driver \
--namespace kube-system \
--values efs-csi-driver.yml
```

```
helm upgrade efs-csi-driver aws-efs-csi-driver/aws-efs-csi-driver \
--namespace kube-system \
--values efs-csi-driver.yml
```
