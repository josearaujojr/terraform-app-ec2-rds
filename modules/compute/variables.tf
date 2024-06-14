variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "app_subnet_public_1a" {
  type        = string
  description = "This subnet"
}

variable "app_vpc_id" {
  description = "The ID of the VPC"
  type        = string
}