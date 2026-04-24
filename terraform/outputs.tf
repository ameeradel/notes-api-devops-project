output "control_plane_public_ip" {
  value = aws_eip.k3s_eip.public_ip
}

output "control_plane_private_ip" {
  value = aws_instance.k3s_server.private_ip
}

output "worker_public_ips" {
  value = aws_instance.k3s_worker[*].public_ip
}

output "worker_private_ips" {
  value = aws_instance.k3s_worker[*].private_ip
}

output "ssh_command" {
  value = "ssh -i <your-key>.pem ubuntu@${aws_eip.k3s_eip.public_ip}"
}