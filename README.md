# Task Manager Microservice - Capstone Project

## Description
A **Spring Boot microservice** for managing tasks, using JDK 17 and an in-memory H2 Database. The goal of this project was to implement a full **End-to-End CI/CD pipeline** using GitHub Actions, Docker, SonarQube, Nexus/Artifactory (simulated by GitHub Secrets/Docker Hub), and Kubernetes/Minikube.

## Technologies Used
*   **Backend:** Spring Boot, Java 17, Maven
*   **Database:** H2 (In-memory for simplicity)
*   **CI/CD:** GitHub Actions, Docker, SonarQube, Nexus/Artifactory (simulated), Kubernetes (Minikube)

## Prerequisites
To build and run this project, you need the following installed:
*   **JDK 17+**
*   **Maven**
*   **Docker Desktop** (Make sure it is running and has enough resources)
*   **Kubectl** (Kubernetes CLI tool)
*   **Minikube** (Or access to a Kubernetes cluster)
*   **SonarQube** (Local instance or SonarCloud account for static analysis)

## How to Build and Run Locally

### Build the Project
Use Maven to compile the code and run tests:
```bash
./mvnw clean install
