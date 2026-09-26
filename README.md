# Terraform Azure Monitoring & CI/CD

Infrastructure as Code project using Terraform to provision an Azure Linux platform with monitoring and GitHub Actions CI/CD.

## Project Goals

- Provision Azure infrastructure using Terraform
- Deploy a Linux web server
- Implement Azure monitoring and alerting
- Store Terraform state remotely
- Automate Terraform validation and planning with GitHub Actions
- Demonstrate Infrastructure as Code CI/CD practices

## Technologies

- Terraform
- Microsoft Azure
- Azure Linux VM
- Nginx
- Azure Monitor
- GitHub Actions
- Git

## Current Infrastructure

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Linux VM
- Nginx

## Planned Features

- Azure Monitor
- VM monitoring
- Alert rules
- Action Groups
- Azure Storage remote Terraform state
- GitHub Actions workflow
- Automated Terraform format, validation and plan

## Deployment

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply

To remove the infrastructure:
terraform destroy