output "manager_public_ip" {
  value = aws_instance.wazuh_manager.public_ip
}

output "dashboard_url" {
  value = "https://${aws_instance.wazuh_manager.public_ip}:5601"
}
