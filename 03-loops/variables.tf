variable "pages" {
  description = "Map of HTML pages to generate. Key = filename, value = page config."
  type = map(object({
    title = string
    body  = string
  }))
  default = {
    index = {
      title = "Home"
      body  = "Welcome to our nginx site generated with Terraform!"
    }
    about = {
      title = "About Us"
      body  = "This site demonstrates Terraform for_each loops creating multiple resources."
    }
    contact = {
      title = "Contact"
      body  = "Reach us at hello@example.com"
    }
  }
}
