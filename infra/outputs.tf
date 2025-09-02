# --- ECR Output ---
output "ecr_repository_url" {
  value = aws_ecr_repository.flask_app.repository_url
}

# --- EKS Outputs (commented out for now) ---
# output "cluster_id" {
#   value = module.eks.cluster_id
# }
#
# output "cluster_endpoint" {
#   value = module.eks.cluster_endpoint
# }
#
# output "cluster_security_group_id" {
#   value = module.eks.cluster_security_group_id
# }
