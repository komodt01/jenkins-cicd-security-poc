
# Jenkins CI/CD Security PoC

This Proof of Concept demonstrates a secure Jenkins pipeline that runs static security scans using tfsec and deploys infrastructure using Terraform.

## Key Features
- Jenkins pipeline with tfsec integration
- Secure Terraform IaC deployment
- AWS S3 bucket example resource
- Proper documentation and teardown steps

## How to Use
1. Set your variables in terraform.tfvars
2. Use Jenkins to run the pipeline defined in Jenkinsfile
