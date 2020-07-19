output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = "${aws_instance.this.public_ip}"
}
output "subnet_id"{
  value = "${aws_instance.this.subnet_id}"
}

locals {
  config_map_aws_auth = <<CONFIGMAPAWSAUTH
apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
CONFIGMAPAWSAUTH
  }
resource "null_resource" "web" {
  provisioner "local-exec" {
    //command = "echo ${aws_instance.this.private_ip} >> /home/ec2-user/private_ips.txt"
    command ="echo ${local.config_map_aws_auth} >> /home/ec2-user/private_ips.txt"
  }
}
