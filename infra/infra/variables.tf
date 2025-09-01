variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "devops-eks-cluster"
}

variable "vpc_id" {
  description = "VPC ID where EKS will be created"
}

variable "subnets" {
  description = "Subnets for the worker nodes"
  type        = list(string)
}
