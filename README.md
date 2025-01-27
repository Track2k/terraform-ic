# Terraform Configuration for VPC, RDS, and EC2

This repository contains Terraform configurations for setting up a Virtual Private Cloud (VPC), Relational Database Service (RDS), and Elastic Compute Cloud (EC2) instances using a modular approach.

## Modules

- **VPC Module**: Configures the network infrastructure.
- **RDS Module**: Sets up the database instance.
- **EC2 Module**: Provisions the compute instance.

## Usage

To use these modules, include them in your Terraform configuration files and provide the necessary variables.

## Requirements

- Terraform = 1.10
- AWS Provider >= 5.0

## Example

```hcl
module "vpc" {
    source = "./modules/vpc"
    # Add required variables
}

module "rds" {
    source = "./modules/rds"
    # Add required variables
}

module "ec2" {
    source = "./modules/ec2"
    # Add required variables
}
```
