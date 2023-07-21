resource "kubernetes_service" "webapp-service" {
  metadata {
    name = "webapp-service"
  }
  spec {
    selector = {
      name = var.pod_label
    }
    port {
      port        = var.port
      target_port = var.port
      node_port   = var.node_port
    }

    type = "NodePort"
  }
}