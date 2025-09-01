# 🚀 Enterprise DevOps Pipeline on AWS  
![CI/CD](https://github.com/Aravindkasireddy/enterprise-devops-pipeline/actions/workflows/ci-cd.yml/badge.svg)

This project demonstrates a **production-grade DevOps pipeline** that covers the complete lifecycle of a modern cloud-native application:  
- **Application** (Flask app containerized with Docker)  
- **CI/CD pipeline** (GitHub Actions) → pushes images to AWS ECR  
- **Infrastructure as Code** (Terraform) → EKS cluster provisioning  
- **Kubernetes manifests** → deploy app to EKS with LoadBalancer  
- **Future scope** → Monitoring (Prometheus/Grafana) and Logging (ELK/CloudWatch)  

---

## 🏗️ Architecture

```text
Developer → GitHub (Code) → GitHub Actions (CI/CD) → Docker Build → AWS ECR (Image Repo)
                                                              ↓
                                            Terraform (EKS Cluster on AWS)
                                                              ↓
                                      Kubernetes Deployment + Service (EKS)
Tech Stack

Cloud: AWS (ECR, EKS, IAM, VPC, EC2, CloudWatch)

CI/CD: GitHub Actions

Containers: Docker, Kubernetes

IaC: Terraform

Monitoring (Future): Prometheus, Grafana

Logging (Future): ELK Stack / CloudWatch
enterprise-devops-pipeline/
│── app/                  # Flask app (source + Dockerfile)
│── .github/workflows/    # GitHub Actions CI/CD workflows
│── infra/                # Terraform scripts for AWS EKS
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│── k8s/                  # Kubernetes deployment + service manifests
│   ├── deployment.yaml
│   └── service.yaml
│── README.md             # Documentation
Pipeline Flow

Code Push (GitHub)

Developer commits changes to main branch.

CI/CD (GitHub Actions)

Workflow triggers automatically.

Builds Docker image from app/Dockerfile.

Pushes image to AWS ECR.

Infrastructure (Terraform)

Terraform code in infra/ provisions AWS EKS cluster.

Includes VPC, Subnets, IAM roles, and Node Groups.

Deployment (Kubernetes)

Kubernetes manifests in k8s/ deploy the app from ECR into EKS.

Service of type LoadBalancer exposes it publicly.
