provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWARYSVAQQIGRYFVR"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "ami-052cef05d01020f1d"
  count  = 2
  
  tags = {
    Name = "import"
  }

}
