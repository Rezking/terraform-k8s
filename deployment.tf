resource "kubernetes_deployment" "frontend" {
  metadata {
    name = var.deploy_label
    labels = {
      name = "frontend"
    }
  }

  spec {
    replicas = 4

    selector {
      match_labels = {
        name = var.pod_label
      }
    }
    template {
      metadata {
        labels = {
          name = var.pod_label
        }
      }
      spec {
        container {
          name  = var.container_name
          image = var.image
          port {
            container_port = var.port
          }
        }
      }
    }
  }
}