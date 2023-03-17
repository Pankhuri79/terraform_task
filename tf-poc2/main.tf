resource "aws_ecr_repository" "repository" {
  count                = length(var.repo_name)
  # count                = length(var.repo_name)> 0 ? 1 : 0
  name                 = "${lower(substr(var.repo_name[count.index], 0, 8))}"
  image_tag_mutability = var.immutable ? "IMMUTABLE" : "MUTBALE"

  image_scanning_configuration {
    scan_on_push = var.scanning
  } 
  
  tags = var.tag_name
}