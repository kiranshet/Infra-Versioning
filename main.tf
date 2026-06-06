# Create S3 bucket

# Fetch the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Create EC2 instance
resource "aws_instance" "demo_ec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.ec2_instance_type
  key_name      = "my-key"
  user_data     = file("${path.module}/scripts/install.sh")
  security_groups = ["default"]

  tags = {
    Name        = "DemoEC2Instance"
    Environment = "Dev"
  }
}


