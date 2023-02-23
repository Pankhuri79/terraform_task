provider "helm" {
  kubernetes {
    config_path = "/home/pankhuri.kumari/.kube/config"
  }
}

provider "kubernetes" {
    config_context_cluster = "minikube"
    config_path = "/home/pankhuri.kumari/.kube/config"
}

