output "nomad_server_cert" {
  value = local.use_provided_certs ? null : tls_locally_signed_cert.nomad_server[0].cert_pem
}

output "nomad_server_key" {
  value     = local.use_provided_certs ? null : tls_private_key.nomad_server[0].private_key_pem
  sensitive = true
}

output "nomad_client_cert" {
  value = local.use_provided_certs ? var.client_certificate : tls_locally_signed_cert.nomad_client[0].cert_pem
}

output "nomad_client_key" {
  value     = local.use_provided_certs ? var.client_key : tls_private_key.nomad_client[0].private_key_pem
  sensitive = true
}

output "nomad_tls_ca" {
  value = local.ca_cert_pem
}
