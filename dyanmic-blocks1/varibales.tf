variable "settings" {
  type = map(object({
    port = number
  }))
  default = {
    "Allows SSH access" = {
      port = 22
    },
    "Allows HTTP traffic" = {
      port = 80
    },
    "Allows HTTPS traffic" = {
      port = 443
    }
  }
}