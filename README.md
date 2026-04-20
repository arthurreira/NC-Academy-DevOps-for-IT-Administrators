# DevOps for IT Administrators

A progressive Terraform learning project with hands-on exercises — from basics to loops and outputs. All exercises run locally using the `hashicorp/local` provider (no cloud account needed).

## Exercises

| # | Folder | Concept | What it creates |
|---|--------|---------|-----------------|
| 1 | `01-basics/` | Resources, providers | A single `hello.html` page |
| 2 | `02-variables/` | Variables, types, tfvars | A customizable nginx-style HTML page |
| 3 | `03-loops/` | `for_each`, maps | Multiple HTML pages from a map |
| 4 | `04-outputs/` | Outputs, expressions | Same as 03 + prints file paths & summary |

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) (v1.0+)

### Installing Terraform

**Windows (winget):**
```bash
winget install Hashicorp.Terraform
```

**Windows (Chocolatey):**
```bash
choco install terraform
```

**macOS (Homebrew):**
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

**Linux (APT - Ubuntu/Debian):**
```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update && sudo apt-get install terraform
```

**Verify installation:**
```bash
terraform --version
```

## Getting Started

Each exercise is self-contained. Pick any folder and run:

```bash
cd 01-basics          # (or 02-variables, 03-loops, 04-outputs)
terraform init        # Download providers
terraform plan        # Preview what will be created
terraform apply       # Create the HTML files
```

Open the generated files in `output/` with your browser to see the results.

**Clean up** when done:
```bash
terraform destroy
```

### Using variables (exercises 02-04)

```bash
cd 02-variables
cp terraform.tfvars.example terraform.tfvars   # Copy the example
# Edit terraform.tfvars with your values
terraform apply
```

## Project Structure

```
├── 01-basics/
│   └── main.tf                 # Single resource
├── 02-variables/
│   ├── main.tf                 # Uses variables for content
│   ├── variables.tf            # Variable declarations
│   └── terraform.tfvars.example
├── 03-loops/
│   ├── main.tf                 # for_each over a map
│   ├── variables.tf            # Map of pages
│   └── terraform.tfvars.example
├── 04-outputs/
│   ├── main.tf                 # Resources with environment label
│   ├── variables.tf            # Variables + environment
│   ├── outputs.tf              # Output definitions
│   └── terraform.tfvars.example
├── .gitignore
└── README.md
```

## Notes

- `terraform.tfstate` files are excluded from version control as they may contain sensitive data. For team collaboration, consider using a [remote backend](https://developer.hashicorp.com/terraform/language/backend).
