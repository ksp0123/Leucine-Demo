# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output repo_url  {
  value = aws_ecr_repository.myapp-repo.repository_url
}

output cluster_url {
  value = module.eks.cluster_endpoint
}

# output kubeconfig {
#   value = module.eks.kubeconfig
# }

output ecr_user_name {
  value = data.aws_ecr_authorization_token.token.user_name
}

output ecr_user_password {
  value = data.aws_ecr_authorization_token.token.password
  sensitive = true
}