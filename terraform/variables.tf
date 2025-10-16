variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "hello-eks-cluster"
}

variable "node_group_desired_capacity" {
  type    = number
  default = 2
}
