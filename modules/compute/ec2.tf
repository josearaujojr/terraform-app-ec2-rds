resource "aws_instance" "app_ec2" {
  ami              = "ami-08a0d1e16fc3f61ea"
  instance_type    = "t2.micro"
  key_name         = ""
  subnet_id        = var.app_subnet_public_1a
  user_data_base64 = filebase64("modules/compute/script.sh")

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-app"
    }
  )
}