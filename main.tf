resource "random_integer" "priority" {
  min = 1
  max = 50000
}
output "random_integer" {
  value = random_integer.priority.result
}
output "random_integer1" {
  value = random_integer.priority.result
}
terraform {
}

output "dockerfile_content" {
  value = file("src/Dockerfile")
}