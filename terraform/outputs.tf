# VPC
output "vpc_id" {
  value = aws_vpc.main.id
}

# ECS Cluster
output "ecs_cluster_id" {
  value = aws_ecs_cluster.main.id
}

# Public Subnets
output "public_subnets" {
  value = aws_subnet.public[*].id
}

# Private Subnets
output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "alb_dns_name" {
  value = aws_lb.app.dns_name
  description = "The DNS name of the load balancer"
}