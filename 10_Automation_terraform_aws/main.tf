resource "aws_instance" "app_server" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket1232133434"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

