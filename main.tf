resource "helm_release" "wordpress2" {
  name       = var.name
  chart      = "${path.module}/myapp"
  namespace  = "wordpress"
  wait       = false
  depends_on = [kubernetes_namespace.wordpress]
  values     = var.values
}