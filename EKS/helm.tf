/*
resource "helm_release" "metrics-server" {
  name = "metrics-server"
  chart = "bitnami/metrics-server"
  namespace = "kube-system"
  atomic = true
  wait = true
  cleanup_on_fail = true
  values = [
      "${file("setting/metric/metric_values.yml")}"
  ]
}

resource "helm_release" "cluster-autoscaler" {
  name = "cluster-autoscaler"
  chart = "autoscaler/cluster-autoscaler"
  dependency_update = true
  namespace = "kube-system"
  atomic = true
  wait = true
  cleanup_on_fail = true
  values = [
      "${file("setting/autoscaler/autoscaler_values.yml")}"
  ]
}


  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metallb"
  version    = "2.3.5"
*/
/*
resource "helm_release" "alb-controller" {
  name = "alb-controller"
  chart = "eks/aws-load-balancer-controller"
  dependency_update = true
  namespace = "kube-system"
  atomic = true
  wait = true
  cleanup_on_fail = true
  values = [
      "${file("setting/albcontroller/controller_values.yml")}"
  ]
}

resource "helm_release" "efs-csi-driver" {
  name = "efs-csi-driver"
  chart = "aws-efs-csi-driver/aws-efs-csi-driver"
  dependency_update = true
  namespace = "kube-system"
  atomic = true
  wait = true
  cleanup_on_fail = true
  values = [
      "${file("setting/efs/provisinig_values.yml")}"
  ]
}
*/

/*
resource "helm_release" "cert-manager" {
  name = "cert-manager"
  chart = "jetstack/cert-manager"
  dependency_update = true
  namespace = "kube-system"
  atomic = true
  wait = true
  cleanup_on_fail = true
  values = [
      "${file("setting/cert-manager/cert-manager_values.yml")}"
  ]
}
*/