output "cluster_name" {
  value = module.eks.cluster_id
}
output "kubeconfig-certificate-authority" {
  value = module.eks.cluster_certificate_authority_data
}
output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
