# Infrastructure Automation in AWS using Terraform

A Terraform project to provision core AWS infrastructure components including IAM, VPC, EC2, and S3.

---
## Overview
This project automates the provisioning of AWS resources using Terraform. It includes:
- IAM user/policy creation
- VPC and subnet setup
- EC2 instance deployment
- S3 bucket configuration

## Prerequisites
1. **Terraform CLI**: [Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. **AWS Account**: Ensure you have an AWS account and IAM user credentials.
3. **AWS CLI** (Optional): [Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) for credential management.

---

## Getting Started
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo/TerraformWithAWS.git
   cd TerraformWithAWS
   ```
2. **Initialize Terraform:**
   ```bash
   terraform init
   ```
3. **Review variables:**
Update variables.tf or create a terraform.tfvars file to set required values (e.g., AWS region, instance type).

4. **Apply configuration:**
   ```bash
   terraform plan  # Preview changes
   terraform apply # Deploy resources
   ```
**Components**
**IAM Configuration**
- Creates IAM users/policies with least-privilege access.
- Defined in provider.tf and supporting modules.

**VPC and Subnet**
- Sets up a VPC with public/private subnets (add vpc.tf if not present).
- Includes route tables and internet gateway configurations.

**EC2 Instance**
- Provisions an EC2 instance using variables from variables.tf (e.g., instance_type, ami_id).
- Security groups and key pairs are configured in main.tf.

**S3 Bucket**
- Creates a private S3 bucket with encryption enabled.
- Configured in main.tf.
