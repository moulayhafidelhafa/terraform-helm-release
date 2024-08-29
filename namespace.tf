resource "kubernetes_namespace" "wordpress" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.namespace
  }
}