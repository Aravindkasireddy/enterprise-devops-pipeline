terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  region  = var.region
  profile = "terraform-admin"
}

# --- ECR Repository ---
resource "aws_ecr_repository" "flask_app" {
  name = "flask-devops-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "flask-devops-app"
    Environment = "dev"
  }
}

# --- Outputs ---
output "ecr_repository_url" {
  value = aws_ecr_repository.flask_app.repository_url
}

# --- EKS Cluster (commented out for now to avoid costs) ---
# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "17.24.0"
#
#   cluster_name    = var.cluster_name
#   cluster_version = "1.29"
#   vpc_id          = var.vpc_id
#   subnets         = var.subnets
#
#   node_groups = {
#     dev = {
#       desired_capacity = 2
#       max_capacity     = 3
#       min_capacity     = 1
#       instance_types   = ["t3.medium"]
#     }
#   }
# }
