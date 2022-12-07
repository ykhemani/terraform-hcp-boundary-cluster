output "boundary_username" {
  value = random_string.boundary_username.result
}

output "boundary_password" {
  value = nonsensitive(random_password.boundary_password.result)
}

output "boundary_cluster_url" {
  value = hcp_boundary_cluster.boundary_cluster.cluster_url
}
