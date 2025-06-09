# EagerMinds Founding AWS Engineer Project

This project is part of the practical task for the AWS Engineer role at **EagerMinds**.

---

## Project Overview

- **Language:** Node.js
- **Containerized:** Yes (Docker)
- **Infrastructure as Code:** Terraform
- **Deployment Target:** EC2 with ALB in a custom VPC

---

## Architecture

### Key AWS Components:

- **VPC**: Custom VPC with public and private subnets across 2 AZs.
- **EC2**: Hosts Docker container running a Node.js app.
- **ALB**: Application Load Balancer routes traffic to EC2 via Target Group.
- **S3**: Stores logs.

### Data Flow:

1. User accesses `ALB DNS URL`.
2. ALB forwards traffic to private EC2.
3. EC2 runs a Dockerized Node.js app (`Hello from EC2 container`).

---

## App Details

**Location:** `Eagerminds-project/app/`

- `index.js`: Basic HTTP server returning a success message.
- `Dockerfile`: Builds the Node.js app into a lightweight container.
- `package.json`: Node dependencies.

---

## Infrastructure Setup (Terraform)

**Location:** `Eagerminds-project/terraform/`

Key files:

- `main.tf`: Defines VPC, EC2, subnets, ALB, routes, etc.
- `user_data.sh`: Bootstraps EC2 with Docker and runs the app.

---

## How to Deploy (Manual)

### 1. Clone and Enter Project
git clone https://github.com/your-username/Eagerminds-project-repo.git
cd Eagerminds-project-repo/Eagerminds-project/terraform

**Set Up AWS Credentials**: aws configure (command)

**Create Infrastructure**:
1. cd terraform
2. terraform init
3. terraform apply

**After successful deployment:**
http://<ALB-NAME>

**Output**
Hello it is Eagerminds project
