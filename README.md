# Terraform First Project 🌱

This is my first Terraform project — it deploys a simple AWS EC2 instance.

---

## 📦 **What it does**
- Uses Terraform to deploy a single **t2.micro** EC2 instance in **ap-south-1 (Mumbai)** region.
- The AMI used is **Ubuntu 22.04**.
- Prints the instance's public IP address after deployment.

---

## 🛠 **Files**
| File         | Purpose                                                      |
| ------------ | ----------------------------------------------------------- |
| `main.tf`    | Main Terraform configuration file with provider, variables, resource, and output |
| `.gitignore` | Ignores Terraform state files and provider cache directories |

---

## 🚀 **How to use**

> Make sure you have [Terraform](https://www.terraform.io/downloads) and [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured.

```bash
# Initialize Terraform
terraform init

# Check what will be created
terraform plan

# Apply and create the resources
terraform apply
```
Type yes when asked to confirm.

🧹 Clean up
To remove everything created and avoid AWS charges:
```bash
terraform destroy
```
✅ Best practices (for later)

1.Use separate files: variables.tf, outputs.tf
2.Manage remote state (e.g., S3 backend)
3.Add security groups instead of open defaults
4.Use modules for larger setups

