variable "pages" {
  description = "Map of HTML pages to generate"
  type = map(object({
    title = string
    body  = string
  }))
  default = {
    index = {
      title = "Home"
      body  = "Welcome to our nginx site!"
    }
    about = {
      title = "About"
      body  = "Learn about Terraform outputs."
    }
    contact = {
      title = "Contact"
      body  = "hello@example.com"
    }
  }
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}
