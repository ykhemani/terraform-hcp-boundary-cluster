resource "random_integer" "boundary_username_length" {
  min = var.min_length
  max = var.max_length
}

resource "random_integer" "boundary_password_length" {
  min = var.min_length
  max = var.max_length
}

resource "random_string" "boundary_username" {
  length  = random_integer.boundary_username_length.result
  upper   = false
  special = false
}

resource "random_password" "boundary_password" {
  length  = random_integer.boundary_password_length.result
  special = false
}

resource "hcp_boundary_cluster" "boundary_cluster" {
  cluster_id = var.boundary_cluster_id
  username   = random_string.boundary_username.result
  password   = random_password.boundary_password.result
}
