provider "aws" {
  region = "us-east-1" 
}

resource "aws_lightsail_instance" "example" {
  name              = "lightsail-example"
  availability_zone = "us-east-1a" 
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "micro_2_0"

  user_data = <<-EOF
              #!/bin/bash
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<h1>This Server is created using Terraform </
}
