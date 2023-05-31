# variables.tf

variable "cluster_name" {
  description = "The name of the ScyllaDB cluster."
  type        = string
}

variable "num_nodes" {
  description = "The number of ScyllaDB nodes in the cluster."
  type        = number
  default     = 3
}
