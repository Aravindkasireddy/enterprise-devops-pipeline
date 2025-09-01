# 🚀 Enterprise DevOps Pipeline on AWS  
![CI/CD](https://github.com/Aravindkasireddy/enterprise-devops-pipeline/actions/workflows/ci-cd.yml/badge.svg)


This project demonstrates a **production-grade DevOps pipeline** integrating CI/CD, containerization, orchestration, Infrastructure as Code, monitoring, and logging on AWS.  
It simulates how modern enterprises build, deploy, and manage cloud-native applications.

---

## 🏗️ Architecture

**Workflow:**
1. Developer pushes code to GitHub.
2. CI/CD (Jenkins or GitHub Actions) triggers build → Docker image.
3. Image pushed to AWS Elastic Container Registry (ECR).
4. Terraform provisions AWS infra (VPC, EC2, RDS, IAM, EKS).
5. Kubernetes deploys microservices to EKS.
6. Monitoring with Prometheus & Grafana.
7. Logging with ELK + AWS CloudWatch.

(📌 Add an architecture diagram here later → save it in `/diagrams/architecture.png`)

---

## ⚙️ Tech Stack
- **Cloud:** AWS (EKS, EC2, RDS, IAM, VPC, S3, CloudWatch)  
- **CI/CD:** Jenkins, GitHub Actions  
- **Containers:** Docker, Kubernetes, Helm  
- **IaC:** Terraform  
- **Monitoring:** Prometheus, Grafana  
- **Logging:** ELK Stack  

---

## 📂 Repository Structure
enterprise-devops-pipeline/
│── app/ # Application source code
│ ├── app.py
│ ├── requirements.txt
│ └── Dockerfile
│── ci-cd/ # Jenkinsfile / GitHub Actions workflows (coming soon)
│── infra/ # Terraform scripts (coming soon)
│── k8s/ # Kubernetes manifests (coming soon)
│── monitoring/ # Prometheus & Grafana configs (coming soon)
│── logging/ # ELK configs (coming soon)
│── diagrams/ # Architecture diagrams
│── README.md

---
✅ CI/CD pipeline running with GitHub Actions
