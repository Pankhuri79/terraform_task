resource "helm_release" "prometheus" {
  name             = "prometheus"
  chart            = "prometheus"
  repository       = var.prometheus_repo
  namespace        = var.namespace
  version          = "14.3.0"
  create_namespace = true
  wait             = true
  reset_values     = true
  max_history      = 3

  set {
    name  = "nodeExporter.enabled"
    value = true
  }
}

resource "null_resource" "top-use" {
  triggers = {
    always_run = local.timestamp
  }
provisioner "local-exec" {
    when    = create
    #removing the txt file and recreate everytime you do terraform aaply 
    command = "top -n 1 -b && rm -f top-*.txt > pankh-timestamp.txt"  
  }

 depends_on = [
    helm_release.prometheus
  ]
}