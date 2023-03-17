
terraform {
  cloud {
    organization = "successive-pankhu"
    workspaces {
      name = "TF-poc"
    }
  }
}