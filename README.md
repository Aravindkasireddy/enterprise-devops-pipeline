# 🚀 Enterprise DevOps Pipeline on AWS

![GitHub Actions](https://img.shields.io/github/actions/workflow/status/Aravindkasireddy/enterprise-devops-pipeline/ci-cd.yml?label=CI%2FCD%20Pipeline&logo=github)
![Terraform](https://img.shields.io/badge/Terraform-v1.13-blue?logo=terraform)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-brightgreen?logo=kubernetes)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws)
![Docker](https://img.shields.io/badge/Docker-Containerization-blue?logo=docker)
![Python](https://img.shields.io/badge/Python-Flask-yellow?logo=python)
> A fully automated **CI/CD pipeline** using **GitHub Actions, Terraform, AWS EKS, and Docker** to deploy a Flask application at scale.


An end-to-end DevOps project that builds, deploys, and runs a Flask application using:

Terraform → Infrastructure as Code (EKS Cluster, VPC, Subnets, IAM, Security Groups)

Docker & Amazon ECR → Containerize and store application images

GitHub Actions (CI/CD) → Build, push, and deploy automatically

Kubernetes (EKS) → Deploy and scale workloads

AWS Load Balancer → Expose app publicly
## 🏗️ Architecture

flowchart TD
    A[GitHub Repo] -->|Push Code| B[GitHub Actions CI/CD]
    B -->|Build & Push| C[ECR: Docker Images]
    C -->|Deploy via kubectl| D[EKS Cluster]
    D -->|Pods Running| E[LoadBalancer Service]
    E -->|Public URL| F[User Browser]
⚙️ Tech Stack

Language: Python (Flask)

IaC: Terraform

Containers: Docker, Amazon ECR

Orchestration: Kubernetes on AWS EKS

CI/CD: GitHub Actions

🚦 How It Works

Developer pushes code → GitHub Actions triggers

Pipeline builds Docker image and pushes to Amazon ECR

Terraform provisions EKS cluster with VPC, subnets, IAM roles

📂 Repository Structure
enterprise-devops-pipeline/
│── app/                 # Flask app + Dockerfile
│── infra/               # Terraform code (EKS, IAM, VPC)
│── k8s/                 # Kubernetes manifests
│── .github/workflows/   # CI/CD pipeline (GitHub Actions)
│── README.md            # Project documentation
🚀 Deployment Demo

Terraform provisions infra:

terraform init
terraform plan
terraform apply


Kubernetes Deployments:

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml


App URL:

## 🌍 Live Demo
Public URL (provisioned via AWS Load Balancer):  
[Flask App on AWS](http://a544b64ec457640639a35c6de4fc28fb-2129974976.us-east-1.elb.amazonaws.com/)



✅ Example output:
## 📸 Screenshots
- GitHub Actions pipeline success
- Terraform EKS provisioning
- kubectl get nodes & pods
- Flask app live in browser

<img width="1790" height="1051" alt="enterprise" src="https://github.com/user-attachments/assets/4f7b8462-79e3-48f6-aadc-9c128b713481" />
<img width="1753" height="1063" alt="image" src="https://github.com/user-attachments/assets/4157e2ea-e7f9-432c-a531-cb8ddf8e6e74" />
<img width="1035" height="268" alt="image" src="https://github.com/user-attachments/assets/3a6794fb-d9ac-4c78-b339-19e1f2efebd3" />

🌟 Key Learnings

🚀 Built a production-grade CI/CD pipeline with GitHub Actions

🛠 Automated infrastructure provisioning using Terraform (EKS, IAM, VPC)

📦 Containerized Flask app with Docker and deployed via Amazon ECR

🌐 Exposed workloads securely using Kubernetes LoadBalancer


## 🔮 Future Enhancements
- Add monitoring with Prometheus + Grafana
- Enable Horizontal Pod Autoscaling (HPA)
- Implement Canary Deployments with Argo Rollouts
- Add Helm charts for easier deployment.




