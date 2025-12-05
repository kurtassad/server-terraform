variable "nomad_server_hostname" {
  type        = string
  description = "Hostname of the nomad server."
}

variable "nomad_server_port" {
  type        = number
  description = "Port that the nomad server endpoint listens on."
  default     = 4647
}

variable "ca_certificate" {
  type        = string
  description = "Optional CA certificate in PEM format. If provided along with client_certificate and client_key, these will be used instead of generating certificates. In this mode, server certificates will not be generated."
  default     = null
  sensitive   = false
}

variable "client_certificate" {
  type        = string
  description = "Optional client certificate in PEM format. Must be provided together with ca_certificate and client_key if using provided certificates mode."
  default     = null
  sensitive   = false
}

variable "client_key" {
  type        = string
  description = "Optional client private key in PEM format. Must be provided together with ca_certificate and client_certificate if using provided certificates mode."
  default     = null
  sensitive   = true
}
