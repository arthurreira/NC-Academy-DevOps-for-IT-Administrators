output "generated_files" {
  description = "List of all generated HTML file paths"
  value       = [for f in local_file.pages : f.filename]
}

output "page_count" {
  description = "Total number of pages generated"
  value       = length(local_file.pages)
}

output "page_names" {
  description = "Names of all generated pages"
  value       = keys(var.pages)
}

output "environment" {
  description = "Current environment"
  value       = var.environment
}
