resource "random_integer" "priority" {
  min = 1
  max = 50000
}
output "random_integer" {
  value = random_integer.priority.result
}