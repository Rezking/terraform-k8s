variable "deploy_label" {
  default = "frontend"
}

variable "pod_label" {
  default = "webapp"
}

variable "image" {
  default = "kodekloud/webapp-color:v1"
}

variable "container_name" {
  default = "simple-webapp"
}

variable "port" {
  default = 8080
}

variable "node_port" {
  default = 30080
}