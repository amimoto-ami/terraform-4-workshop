variable "region" {
  default = "ap-northeast-1"
}
variable "key_name" {}
variable "instance_number" {}
variable "default_security_group_id" {}

provider "aws" {
  region     = "${var.region}"
}

resource "aws_instance" "amimoto_woo" {
  count         = "${var.instance_number}"
  ami           = "ami-151ef16a"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"
  vpc_security_group_ids = [
    "${var.default_security_group_id}"
  ]
  tags {
    Name = "${format("amimoto%02d", count.index + 1)}"
  }
}

output "amimoto_woo_Instance_ids" {
    value = "${aws_instance.amimoto_woo.*.id}"
}
output "amimoto_woo_Instance_public_dns" {
    value = "${aws_instance.amimoto_woo.*.public_dns }"
}
