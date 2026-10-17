# HDB Resale Assessment - AWS Infrastructure

## Overview

This directory contains Terraform configuration for the AWS infrastructure reference design supporting the HDB Resale Assessment.

## Resources

- AWS provider configuration
- Configurable AWS region
- Virtual Private Cloud (VPC)
- Public subnet
- Internet Gateway
- Public route table and subnet association
- Outputs for key network resource IDs

## Region

The default region is `ap-southeast-1` (Asia Pacific - Singapore).

## Prerequisites

- Terraform CLI 1.5.0 or later
- An AWS account
- AWS credentials configured securely
- Appropriate AWS permissions

## Validation

Run these commands from the `infrastructure` directory:

```bash
terraform fmt -check
terraform init -backend=false
terraform validate
terraform plan