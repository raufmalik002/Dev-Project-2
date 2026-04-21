# 🚀 DevOps Projects Portfolio

This repository contains my hands-on DevOps projects, where I focused on building real-world cloud infrastructure, automating deployments, and implementing production-like environments.

The goal of these projects was not just to learn tools, but to understand how modern DevOps workflows operate in real environments.

---

# 📌 Project 1: CI/CD Pipeline with Docker & AWS

## 🔹 Overview

In this project, I built a complete CI/CD pipeline to automate the process of building, testing, and deploying a Dockerized application on AWS.

## 🔹 Key Features

* Automated code deployment using Jenkins pipeline
* Dockerized Flask application
* Continuous Integration & Continuous Deployment (CI/CD)
* Deployment on AWS EC2 instance
* Version-controlled source code using GitHub

## 🔹 Tech Stack

* Jenkins
* Docker
* AWS EC2
* Git & GitHub
* Linux

## 🔹 Workflow

1. Developer pushes code to GitHub
2. Jenkins pipeline triggers automatically
3. Docker image is built
4. Application is deployed on EC2
5. App becomes accessible via public IP

## 🔹 Outcome

This project helped me understand:

* CI/CD pipeline design
* Automation of deployments
* Integration between development and operations

---

# 📌 Project 2: Monitoring & Deployment Enhancement

## 🔹 Overview

This project extends the CI/CD pipeline by adding monitoring and improving deployment visibility.

## 🔹 Key Features

* Application monitoring using metrics
* Dashboard visualization
* Improved deployment tracking
* Debugging and observability setup

## 🔹 Tech Stack

* Prometheus
* Grafana
* Docker
* AWS

## 🔹 Outcome

Through this project, I learned:

* Monitoring system design
* Metrics collection and visualization
* Troubleshooting live applications

---

# 📌 Project 3: Infrastructure as Code with Terraform (AWS)

## 🔹 Overview

In this project, I designed and provisioned a complete AWS infrastructure using Terraform and deployed a Dockerized application automatically.

This project reflects real-world DevOps practices using Infrastructure as Code (IaC).

## 🔹 Architecture

* Custom VPC
* Public Subnet
* Internet Gateway
* Route Table
* Security Groups
* EC2 Instance

## 🔹 Key Features

* Fully automated infrastructure provisioning using Terraform
* Dynamic security group configuration
* Latest Ubuntu AMI selection using data sources
* Automated server setup using user_data script
* Docker-based application deployment
* Nginx reverse proxy for production-like access (port 80)

## 🔹 Deployment Flow

1. Terraform provisions AWS infrastructure
2. EC2 instance is created inside custom VPC
3. Server bootstraps automatically using script.sh
4. Docker installs and runs the application
5. Nginx exposes the application on port 80
6. Application becomes accessible via browser

## 🔹 Tech Stack

* Terraform
* AWS (EC2, VPC, Networking)
* Docker
* Nginx
* Linux

## 🔹 Outcome

This project helped me understand:

* Infrastructure as Code (IaC)
* Cloud networking (VPC, subnets, routing)
* Automated server provisioning
* Production-style deployment architecture

---

# 🧠 What I Learned Across These Projects

* Designing CI/CD pipelines
* Automating infrastructure using Terraform
* Deploying and managing containerized applications
* Working with AWS cloud services
* Setting up monitoring and observability
* Building production-like DevOps environments

---

# 🎯 Future Improvements

* Implement Terraform remote backend using S3
* Add DynamoDB for state locking
* Introduce Terraform modules for reusable infrastructure
* Integrate CI/CD with Terraform workflows
* Add Load Balancer for high availability

---

# 🙌 Conclusion

These projects represent my journey into DevOps, focusing on practical implementation rather than just theoretical knowledge.

I aimed to build solutions that reflect real-world scenarios and demonstrate my ability to design, automate, and manage modern cloud-based systems.

---
