resource "random_integer" "priority" {
  min = 1
  max = 50000
}
output "random_integer" {
  value = random_integer.priority.result
}
terraform {
  backend "s3" {
    bucket         = "adarsh-backend-jd"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

output "dockerfile_content" {
  value = file("src/Dockerfile")
}