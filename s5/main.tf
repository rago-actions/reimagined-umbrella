data "http" "my_ip" {
   url = "http://ifconfig.me"
}

output "My_System_IP" {
  value = data.http.my_ip.body
}
