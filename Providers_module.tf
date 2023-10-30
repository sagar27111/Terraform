module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.us-east-1
  }
}

resource "aws_instance" "example" {
  ami = "ami-id"
  instance_type = "t2.micro"
  depends_on = [module.aws_vpc]
}
