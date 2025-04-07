variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "owner" {
  description = "AWS account or team owner"
  type        = string
  default     = "sample@company.co.uk"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "tags" {
  type        = map(string)
  description = "List of tags for resources"
  default = { managed_by = "terraform",
    owner       = "Team A",
    environment = "dev",
  SKU = "sample" }
}
