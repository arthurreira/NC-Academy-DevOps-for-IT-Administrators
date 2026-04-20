terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "nginx_page" {
  filename = "${path.module}/output/index.html"
  content  = <<-HTML
    <!DOCTYPE html>
    <html>
    <head>
      <title>${var.page_title}</title>
      <style>
        body { font-family: Arial, sans-serif; margin: 40px; background: ${var.bg_color}; }
        h1 { color: #333; }
        .info { color: #666; font-size: 14px; }
      </style>
    </head>
    <body>
      <h1>${var.page_title}</h1>
      <p>${var.page_content}</p>
      <p class="info">Server port: ${var.server_port}</p>
    </body>
    </html>
  HTML
}
