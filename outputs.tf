output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = "${aws_instance.this.*.public_ip}"
}
output "subnet_id"{
  value = "${aws_instance.this.subnet_id
}
