# HDB Resale Assessment – AWS Infrastructure

## Overview

This directory contains Terraform configuration for an AWS infrastructure reference design supporting the HDB Resale Assessment.

The configuration demonstrates Infrastructure as Code (IaC) practices by defining core AWS networking resources and making the deployment region configurable.

**Important:** This is a reference network design, not a complete production-ready OutSystems hosting environment. Additional infrastructure, platform configuration, licensing, security controls, and deployment-specific settings would be required to host an OutSystems platform.

## Architecture and Resources

The Terraform configuration defines the following resources:

- AWS provider configuration
- Configurable AWS region
- Virtual Private Cloud (VPC)
- Public subnet
- Internet Gateway
- Public route table and subnet association
- Outputs for key network resource IDs

### Region

The default AWS region is `ap-southeast-1` (Asia Pacific – Singapore).

The region can be changed through the `aws_region` input variable in `variables.tf`.

## Project Files

| File | Purpose |
|---|---|
| `versions.tf` | Defines the required Terraform version and AWS provider version |
| `providers.tf` | Configures the AWS provider |
| `variables.tf` | Defines configurable input variables |
| `main.tf` | Defines the AWS networking resources |
| `outputs.tf` | Exposes key resource IDs |

## Prerequisites

- Terraform CLI 1.5.0 or later
- Git, for version control
- An AWS account and securely configured credentials, if planning or deploying AWS resources

AWS credentials are not required for the formatting, initialization with `-backend=false`, and validation commands below.

## Validation

Run the following commands from the repository root.

### 1. Format the Terraform files

```bash
terraform -chdir=infrastructure fmt -check
```

### 2. Initialize Terraform

```bash
terraform -chdir=infrastructure init -backend=false
```

### 3. Validate the configuration

```bash
terraform -chdir=infrastructure validate
```

A successful validation should display:

```text
Success! The configuration is valid.
```

### 4. Optional: Review the execution plan

After configuring valid AWS credentials and ensuring the required permissions are available, run:

```bash
terraform -chdir=infrastructure plan
```

This previews the proposed infrastructure changes. It does not create resources.

**Note:** Do not run `terraform apply` unless you have explicitly decided to deploy the infrastructure and have reviewed the potential AWS costs.

## Design Assumptions and Limitations

- AWS Singapore is used as the default deployment region.
- The VPC uses the CIDR range `10.0.0.0/16`.
- The public subnet uses the CIDR range `10.0.1.0/24`.
- The current configuration focuses on foundational network resources.
- It does not provision the OutSystems platform, application servers, database servers, load balancer, or a complete production security architecture.
- Actual hosting requirements must be confirmed against the selected OutSystems deployment model and its supported infrastructure.

## Cost and Deployment Considerations

This repository documents the infrastructure design and supports Terraform validation. AWS resources do not need to be deployed merely to validate the configuration.

Creating AWS resources may incur charges. Review the AWS pricing and resource requirements before deployment.

## Related Documentation

- Root project documentation: `../README.md`
- OutSystems application documentation: `../outsystems/README.md`
- Automated testing documentation: `../tests/README.md`
