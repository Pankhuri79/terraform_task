module "prometheus" {
  source  = "./modules/prometheus"
 
   prometheus_repo  =  var.prometheus_repo
   namespace        = var.namespace
   chart       = "kube-prometheus-stack"
}

