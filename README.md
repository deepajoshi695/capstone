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

## CI/CD Pipeline Overview

The project uses **GitHub Actions** (`.github/workflows/main.yml`) to automate the build, test, and containerization process whenever code is pushed to the `main` branch. This process includes:
1.  Building the application with Maven.
2.  Running unit tests.
3.  Scanning code quality with SonarQube.
4.  Building the Docker image.
5.  Logging into Docker Hub and pushing the final image to `deepajoshi695/capstone-app:latest`.

## Deployment to Kubernetes (Minikube)

To deploy the application to a Kubernetes cluster or Minikube:

1.  **Start Minikube:** 
    ```bash
    minikube start
    ```

2.  **Apply Kubernetes Manifests:** Navigate to the `k8s/` directory and deploy the service and deployment:
    ```bash
    kubectl apply -f k8s/
    ```

3.  **Access the Application:** Port-forward the service to view it locally:
    ```bash
    kubectl port-forward service/<your-service-name> 8080:8080
    ```
    (Replace `<your-service-name>` with the actual name from your `k8s/service.yaml` file).
