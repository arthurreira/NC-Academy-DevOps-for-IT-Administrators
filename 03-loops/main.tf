terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "pages" {
  for_each = var.pages

  filename = "${path.module}/output/${each.key}.html"
  content  = <<-HTML
    <!DOCTYPE html>
    <html>
    <head>
      <title>${each.value.title}</title>
      <style>
        body { font-family: Arial, sans-serif; margin: 40px; background: #f5f5f5; }
        h1 { color: #333; }
        nav { margin-bottom: 20px; }
        nav a { margin-right: 15px; text-decoration: none; color: #0066cc; }
      </style>
    </head>
    <body>
      <nav>
        %{for name, page in var.pages}
        <a href="${name}.html">${page.title}</a>
        %{endfor}
      </nav>
      <h1>${each.value.title}</h1>
      <p>${each.value.body}</p>
    </body>
    </html>
  HTML
}
