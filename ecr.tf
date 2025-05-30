resource "aws_ecr_repository" "HCLHackECR" {
  name = "my-ecr-repository-hclhack"  # Required: Repository name
  image_tag_mutability       = "MUTABLE"
  force_delete = true 
  image_scanning_configuration {
    scan_on_push = true  
  }
}