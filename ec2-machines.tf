data "aws_ami" "ion_ami" {
  most_recent =  true
  owner  = [*self*]
  name_reges = "^ion_packer-.........."
}


resource "aws_instance" "webapp1" {
  ami                         = var.ami
  instance_type               = "t2.micro"

  associate_public_ip_address = "true"
  subnet_id                   = aws_subnet.PublicAZA.id
  vpc_security_group_ids      = [aws_security_group.WebServer.id]
  key_name                    = "2222"
  tags = {
    Name = "ion-WebApp1"
  }

  depends_on = [aws_internet_gateway.gw]
  
}
