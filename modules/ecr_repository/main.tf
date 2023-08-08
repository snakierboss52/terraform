resource "aws_ecr_repository" "default" {
  name = var.repository_name
}

resource "aws_ecr_lifecycle_policy" "default" {
  repository = aws_ecr_repository.default.name
  policy     = var.lifecycle_policy != "" ? var.lifecycle_policy : file("${path.module}/policy.json")
}