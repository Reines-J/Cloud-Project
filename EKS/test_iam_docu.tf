/*
data "aws_iam_policy_document" "node-autoscaling" {
  statement {
    actions = [
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeAutoScalingInstances",
        "autoscaling:DescribeLaunchConfigurations",
        "autoscaling:DescribeTags",
        "autoscaling:SetDesiredCapacity",
        "autoscaling:TerminateInstanceInAutoScalingGroup",
        "ec2:DescribeLaunchTemplateVersions"
    ]
    resources = [ "*" ]
  }
}

data "aws_iam_policy_document" "node-efscsi" {
  statement {
    actions = [
        "elasticfilesystem:DescribeAccessPoints",
        "elasticfilesystem:DescribeFileSystems"
    ]
    resources = [ "*" ]
  }
  statement {
    actions = [
      "elasticfilesystem:CreateAccessPoint"
    ]
    resources = [ "*" ]
    condition {
      test = "StringLike"
      variable = "aws:RequestTag/efs.csi.aws.com/cluster"
      values = [
        "true"
      ]
    }
  }
  statement {
    actions = [
      "elasticfilesystem:DeleteAccessPoint"
    ]
    resources = [ "*" ]
    condition {
      test = "StringLike"
      variable = "aws:ResourceTag/efs.csi.aws.com/cluster"
      values = [
        "true"
      ]
    }
  }
}

data "aws_iam_policy_document" "cert-manager" {
  statement {
    actions = [
      "route53:GetChange"
    ]
    resources = [ "arn:aws:route53:::change/*" ]
  }
  statement {
    actions = [
      "route53:ChangeResourceRecordSets",
      "route53:ListResourceRecordSets"
    ]
    resources = ["arn:aws:route53:::hostedzone/*"]
  }
  statement{
    actions = [
       "route53:ListHostedZonesByName"
    ]
    resources = [ "*" ]
  }
}

data "aws_iam_policy_document" "node-albcontroller"{
  statement {
    actions = [
        "acm:DescribeCertificate",
        "acm:ListCertificates",
        "acm:GetCertificate"
    ]
    resources = [ "*" ]
  }
  statement {
    actions = [
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:CreateSecurityGroup",
        "ec2:CreateTags",
        "ec2:DeleteTags",
        "ec2:DeleteSecurityGroup",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeInstances",
        "ec2:DescribeInstanceStatus",
        "ec2:DescribeInternetGateways",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeTags",
        "ec2:DescribeVpcs",
        "ec2:ModifyInstanceAttribute",
        "ec2:ModifyNetworkInterfaceAttribute",
        "ec2:RevokeSecurityGroupIngress"
    ]
    resources = [ "*" ]
  }
  statement {
    actions = [
        "elasticloadbalancing:AddListenerCertificates",
        "elasticloadbalancing:AddTags",
        "elasticloadbalancing:CreateListener",
        "elasticloadbalancing:CreateLoadBalancer",
        "elasticloadbalancing:CreateRule",
        "elasticloadbalancing:CreateTargetGroup",
        "elasticloadbalancing:DeleteListener",
        "elasticloadbalancing:DeleteLoadBalancer",
        "elasticloadbalancing:DeleteRule",
        "elasticloadbalancing:DeleteTargetGroup",
        "elasticloadbalancing:DeregisterTargets",
        "elasticloadbalancing:DescribeListenerCertificates",
        "elasticloadbalancing:DescribeListeners",
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:DescribeLoadBalancerAttributes",
        "elasticloadbalancing:DescribeRules",
        "elasticloadbalancing:DescribeSSLPolicies",
        "elasticloadbalancing:DescribeTags",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeTargetGroupAttributes",
        "elasticloadbalancing:DescribeTargetHealth",
        "elasticloadbalancing:ModifyListener",
        "elasticloadbalancing:ModifyLoadBalancerAttributes",
        "elasticloadbalancing:ModifyRule",
        "elasticloadbalancing:ModifyTargetGroup",
        "elasticloadbalancing:ModifyTargetGroupAttributes",
        "elasticloadbalancing:RegisterTargets",
        "elasticloadbalancing:RemoveListenerCertificates",
        "elasticloadbalancing:RemoveTags",
        "elasticloadbalancing:SetIpAddressType",
        "elasticloadbalancing:SetSecurityGroups",
        "elasticloadbalancing:SetSubnets",
        "elasticloadbalancing:SetWebACL"
    ]
    resources = [ "*" ]
  }
  statement {
    actions = [
        "iam:CreateServiceLinkedRole",
        "iam:GetServerCertificate",
        "iam:ListServerCertificates"
    ]
    resources = [ "*" ]
  }
  statement {
    actions = [
        "cognito-idp:DescribeUserPoolClient"
    ]
    resources = [ "*" ]
  }
  statement {
    actions = [ 
        "waf-regional:GetWebACLForResource",
        "waf-regional:GetWebACL",
        "waf-regional:AssociateWebACL",
        "waf-regional:DisassociateWebACL"
     ]
     resources = [ "*" ]
  }
  statement {
    actions = [
        "tag:GetResources",
        "tag:TagResources"
    ]
    resources = [ "*"]
  }
  statement {
    actions = [
        "waf:GetWebACL"
    ]
    resources = [ "*" ]
  }
}
*/