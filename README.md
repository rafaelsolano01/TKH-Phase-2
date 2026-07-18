# TLAB 5: Budgeted Identity — Secure Infrastructure Deployment

## Project Overview
This project implements a secure, least-privilege cloud infrastructure deployment for **Titan FinTech** using Terraform (Infrastructure as Code).

## Architectural Components
* **Financial Firewall (AWS Budget):** Hard spending cap of $10.00 USD monthly with alerts at 80%.
* **Secure Storage Vault (Private S3 Bucket):** Dynamically named using initials and random hex.
* **Surgical IAM Privilege Layer:** Strict role-based access controls using `Titan-EC2-Vault-Role`.
* **Compute Layer:** Ubuntu Server instance (`t2.micro`).

## Deliverables & Verification
1. `main.tf` — Declared infrastructure configuration.
2. `build_success.png` — Proof of 9 resources added.
3. `security_audit.png` — AWS Console verification of the attached IAM role.
4. `destroy_verification.png` — Confirmation of the 9 destroyed resources.
