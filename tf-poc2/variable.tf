variable "repo_name" {
  type        = list(string)
 }

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}

variable "tag_name" {
    type = map(string)
    default = {
      "name" = "logics"
    }
}
variable "immutable" {
  type        = bool
}

variable "scanning" {
  type        = bool
}

