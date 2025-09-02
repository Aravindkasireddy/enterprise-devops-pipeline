# --- Variables ---

# AWS Region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# --- EKS Variables (commented out for now) ---
# variable "cluster_name" {
#   description = "EKS cluster name"
#   type        = string
# }
#
# variable "vpc_id" {
#   description = "VPC ID for the EKS cluster"
#   type        = string
# }
#
# variable "subnets" {
#   description = "Subnets for the worker nodes"
#   type        = list(string)
# }
