
# Jenkins CI/CD Security PoC – Project Summary

## Problem Statement
CI/CD pipelines often lack embedded security controls, risking misconfigurations and insecure deployments.

## Project Definition
This PoC demonstrates a secure Terraform deployment pipeline using Jenkins and tfsec.

## Project Goals
- Automate secure deployments
- Integrate static security scanning
- Document infrastructure decisions

## Required Resources
- Jenkins
- AWS account
- Terraform CLI
- tfsec

## Methodology
- Define Jenkins pipeline
- Scan Terraform with tfsec
- Deploy to AWS via Terraform

## Results and Findings
- tfsec identified misconfigurations early
- Secure S3 bucket was deployed with tags

## Recommendations
- Expand to include dynamic scanning and cloud-native logging
