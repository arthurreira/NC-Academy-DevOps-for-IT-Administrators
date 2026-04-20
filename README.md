# DevOps for IT Administrators

A Terraform starter project demonstrating Infrastructure as Code (IaC) fundamentals using the `hashicorp/local` provider.

## What It Does

Uses Terraform to create a local file (`hellos.txt`) with the content `"Terraform is working!"` — a simple way to verify your Terraform setup is functioning correctly.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) (v1.0+)

## Getting Started

1. **Clone the repository**
   ```bash
   git clone <repo-url>
   cd DevOps-for-IT-Administrators
   ```

2. **Initialize Terraform** (downloads required providers)
   ```bash
   terraform init
   ```

3. **Preview changes**
   ```bash
   terraform plan
   ```

4. **Apply the configuration**
   ```bash
   terraform apply
   ```

5. **Verify** — a `hellos.txt` file should be created with the content:
   ```
   Terraform is working!
   ```

6. **Clean up** (removes the created file)
   ```bash
   terraform destroy
   ```

## Project Structure

```
├── main.tf                 # Terraform configuration
├── .terraform.lock.hcl     # Dependency lock file
├── .gitignore              # Excludes state files and provider binaries
└── README.md
```

## Notes

- `terraform.tfstate` files are excluded from version control as they may contain sensitive data. For team collaboration, consider using a [remote backend](https://developer.hashicorp.com/terraform/language/backend).
