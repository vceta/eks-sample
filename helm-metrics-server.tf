# Metrics server
resource "helm_release" "metrics_server" {
  name = "metrics-server"

  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "metrics-server"
  namespace        = "metrics-server"
  version          = "5.11.1"
  create_namespace = true

  set {
    name  = "apiService.create"
    value = "true"
  }
}