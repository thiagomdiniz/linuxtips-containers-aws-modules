variable "project_name" {
  type        = string
  description = "Nome do projeto. Utilizado como prefixo para os recursos criados dentro desse projeto."
}

variable "aws_region" {
  type        = string
  description = "Região da AWS onde os recursos serão criados."
}

variable "cidr" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "private_subnets" {
  type = list(map({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "public_subnets" {
  type = list(map({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}