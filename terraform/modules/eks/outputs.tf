output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.this.name
}

output "eks_cluster_endpoint" {
  description = "EKS cluster API endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "eks_cluster_ca_certificate" {
  description = "EKS cluster CA certificate"
  value       = aws_eks_cluster.this.certificate_authority[0].data
}

output "eks_node_group_name" {
  description = "EKS Node Group name"
  value       = aws_eks_node_group.this.node_group_name
}
