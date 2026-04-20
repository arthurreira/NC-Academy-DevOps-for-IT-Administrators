variable "page_title" {
  description = "The title of the HTML page"
  type        = string
  default     = "My Nginx Page"
}

variable "page_content" {
  description = "The main content/body text of the page"
  type        = string
  default     = "Welcome to my Terraform-generated nginx page!"
}

variable "server_port" {
  description = "The port number to display on the page"
  type        = number
  default     = 8080
}

variable "bg_color" {
  description = "Background color of the page"
  type        = string
  default     = "#f5f5f5"
}
