🚀 Terraform AWS S3 & IAM Project
📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and manage AWS resources.
The infrastructure includes:

An Amazon S3 bucket

An IAM user with S3 access policy

This project is designed for DevOps fresher roles to showcase Terraform, AWS, and Linux fundamentals.

🛠️ Technologies Used

Terraform

AWS (S3, IAM)

Linux / AWS CLI

🏗️ Architecture

Terraform provisions the following AWS resources:

S3 Bucket – for object storage

IAM User – with permissions to access S3

All resources are managed using Terraform lifecycle commands.


📁 Project Structure
terraform-aws-s3-iam/
│
├── main.tf        # AWS resources
├── variables.tf  # Input variables
├── outputs.tf    # Output values
└── README.md

