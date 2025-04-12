# General Configs

variable "project_name" {
  type        = string
  description = "Nome do projeto. Utilizado como prefixo para os recursos criados dentro desse projeto."
}

variable "aws_region" {
  type        = string
  description = "Região da AWS onde os recursos serão criados."
}

# VPC

variable "vpc_id" {
  description = "ID da VPC."
  type        = string
}

variable "private_subnets" {
  description = "Lista de IDs das subnets privadas."
  type        = list(string)
}

variable "public_subnets" {
  description = "Lista de IDs das subnets publicas."
  type        = list(string)
}

# ECS General

variable "capacity_providers" {
  type        = list(string)
  description = "A lista dos capacity providers que serão permitidos no cluster Fargate."
  default = [
    "FARGATE", "FARGATE_SPOT"
  ]
}