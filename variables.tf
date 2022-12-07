variable "min_length" {
  type        = number
  description = "Minimum length of Boundary username and password."
  default     = 16
}

variable "max_length" {
  type        = number
  description = "Maximum length of Boundary username and password."
  default     = 63
}

variable "boundary_cluster_id" {
  type        = string
  description = "The ID of the Boundary cluster to create."
}
