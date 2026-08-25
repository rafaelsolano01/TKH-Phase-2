# Secure Automated Web Architecture

## Description
This repository provisions a secure, automated web architecture on AWS using Infrastructure as Code (IaC). It automates the deployment of a hardened VPC, isolated public subnet, custom security group rules, and an EC2 web server while enforcing security best practices.

## Technologies Used
* **AWS**: Hosting VPC, Subnet, Internet Gateway, Security Groups, and EC2 instance.
* **Terraform**: Infrastructure as Code (IaC) tool used to declare and provision resources.
* **GitHub Actions**: Continuous Integration/Continuous Deployment (CI/CD) pipeline management.
* **tfsec**: Static analysis security scanner for Terraform configurations.

## Architecture
The infrastructure is built using a defense-in-depth approach:
* **VPC & Subnet Isolation**: Resources are isolated within a `10.0.0.0/16` Virtual Private Cloud with a public subnet (`10.0.1.0/24`) attached to an Internet Gateway for routed access.
* **Security Group Lockdown**: Inbound access via `tkh-web-security-group` restricts administrative access. HTTP (port 80) traffic is open for public web access, while SSH (port 22) access is restricted to authorized administrative IPs.
