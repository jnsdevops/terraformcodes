resource "aws_lightsail_instance" "gitlab-lightsail" {
  name              = "lightsail-example"
  availability_zone = "us-east-1a" 
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_2_0"
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<h1>This Server is created using Terraform </
}