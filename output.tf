output "output_public_ip" {
  value = aws_instance.nagios_instance.public_ip
}