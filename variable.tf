variable "prometheus_repo" {
 description = "Repository URL where to locate the requested chart." 
 type = string
 }

 variable "namespace" {
 description = "The namespace to install the release into." 
 type = string
 }

# variable "access_key" {
#     type = string
#     }

# variable "secret_key" {
#   type = string
# }

# variable "region" {
#   type = string
# }
