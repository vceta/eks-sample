# Karpenter autoscaler for eks
# Please try to avoid spot nodes for long production workloads
# Additional node group with SPOT instances and affinity(placement) and taints could be placement for batch workloads

resource "helm_release" "karpenter" {
  name       = "karpenter"
  repository = "oci://public.ecr.aws/karpenter"
  chart      = "karpenter"
  version    = "v0.34.0"

  namespace        = "karpenter"
  create_namespace = true

  set {
    name  = "settings.clusterName"
    value = module.eks.cluster_name
  }

  set {
    name  = "settings.clusterEndpoint"
    value = module.eks.cluster_endpoint
  }

  set {
    name  = "settings.aws.defaultInstanceProfile"
    value = "KarpenterNodeInstanceProfile-${module.eks.cluster_name}"
  }

  set {
    name  = "serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    value = aws_iam_role.karpenter_controller.arn
  }
}
