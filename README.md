# Terraform Azure Monitoring & CI/CD

Infrastructure as Code project using Terraform to provision and manage an Azure Linux platform with monitoring, alerting, remote state, and GitHub Actions CI/CD.

[![Terraform CI](https://github.com/febinpodipara000-sudo/terraform-azure-monitoring-cicd/actions/workflows/terraform.yml/badge.svg)](https://github.com/febinpodipara000-sudo/terraform-azure-monitoring-cicd/actions/workflows/terraform.yml)

## Project Overview

This project demonstrates a production-style Terraform workflow for Azure infrastructure.

The project includes:

- Infrastructure as Code using Terraform
- Azure Linux virtual machine
- Nginx web server
- Azure Virtual Network and subnet
- Network Security Group
- Azure Monitor metric alert
- Azure Monitor Action Group
- Remote Terraform state using Azure Storage
- GitHub Actions CI/CD
- GitHub OIDC authentication with Microsoft Entra ID
- Terraform format, validation and plan automation

## Architecture

```text
Developer
   |
   | git push
   v
GitHub Repository
   |
   v
GitHub Actions
   |
   | OIDC
   v
Microsoft Entra ID
   |
   v
Azure
   |
   +-- Resource Group
   |      |
   |      +-- Virtual Network
   |      +-- Subnet
   |      +-- NSG
   |      +-- Public IP
   |      +-- NIC
   |      +-- Linux VM
   |      +-- Nginx
   |      +-- Azure Monitor
   |             |
   |             +-- Metric Alert
   |             +-- Action Group
   |
   +-- Azure Storage
          |
          +-- Remote Terraform State

Technologies:
Terraform
Microsoft Azure
Azure Linux VM
Ubuntu 22.04
Nginx
Azure Monitor
Azure Storage
Microsoft Entra ID
GitHub Actions
GitHub OIDC
Git

Azure Infrastructure-
Terraform provisions:
Resource Group
Virtual Network
Subnet
Network Security Group
Static Public IP
Network Interface
Linux Virtual Machine
Nginx installation through VM Extension
Azure Monitor Action Group
Azure Monitor CPU metric alert

Monitoring:
The project creates an Azure Monitor CPU alert.
The alert triggers when:
Average CPU > 80%
for:
5 minutes

The alert sends a notification through an Azure Monitor Action Group.

Remote Terraform State:
Terraform state is stored remotely in Azure Storage.

Storage Account: tfstatefebin2026
Container: tfstate
State Key: monitoring-cicd.tfstate

The storage account is created separately using the bootstrap Terraform configuration.

GitHub Actions - 
GitHub Actions automatically performs:
Terraform formatting check
Terraform initialization
Terraform validation
Terraform plan

The workflow runs on:
Push to master
Pull requests targeting master

Authentication:
GitHub Actions authenticates to Azure using OpenID Connect (OIDC).
No Azure client secret is stored in GitHub.


Authentication flow:
GitHub Actions
      |
      | OIDC token
      v
Microsoft Entra ID
      |
      v
Azure Service Principal
      |
      v
Azure Resources

Terraform Commands -
Initialize Terraform: terraform init
Format Terraform: terraform fmt
Validate configuration: terraform validate
Create execution plan: terraform plan

Deploy infrastructure: terraform apply
Destroy infrastructure: terraform destroy

Repository Structure:
terraform-azure-monitoring-cicd/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── bootstrap/
│   └── main.tf
│
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .gitignore
├── .terraform.lock.hcl
└── README.md

Skills Demonstrated:
Terraform
Infrastructure as Code
Azure Infrastructure
Azure Monitor
Terraform Remote State
Azure RBAC
Microsoft Entra ID
GitHub Actions
GitHub OIDC
CI/CD
Linux
Nginx
Networking
Infrastructure automation