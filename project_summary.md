# Project Summary

## Problem Statement
The project demonstrates how to integrate **Trivy** (a vulnerability scanner) into a Jenkins-based **CI/CD pipeline**. The goal is to automate the security scanning of code and container images as part of the software delivery pipeline, helping identify security risks early.

## Project Definition
This project sets up a Jenkins pipeline running inside a Docker container. It integrates **Trivy** to perform **vulnerability scanning** on files, Docker images, and dependencies. The objective is to automate vulnerability detection as part of the development lifecycle.

## Project Goals
- **Automate security scanning**: Automatically scan project files and Docker images during the build process.
- **Early vulnerability detection**: Quickly identify high and critical vulnerabilities in dependencies or images.
- **Prove CI/CD integration**: Show that integrating a security scanner into a Jenkins pipeline is both feasible and effective.

## Required Resources
- **Jenkins** (for continuous integration)
- **Trivy** (for vulnerability scanning)
- **Docker** (for containerization and isolation)
- **Jenkinsfile** (defining the pipeline)
- **Docker Compose** (to set up Jenkins in Docker containers)

## Methodology
1. **Set up Jenkins**: Install and configure Jenkins inside a Docker container using a custom `Dockerfile`.
2. **Install Trivy**: Install Trivy inside the Jenkins container to scan code and container images.
3. **Configure Jenkins Pipeline**: Define a pipeline that runs Trivy as a scan step.
4. **Run and validate**: Trigger the pipeline, scan the code, and review results in the Jenkins console output.

## Results and Findings
- The **Jenkins pipeline** was successfully set up and executed.
- **Trivy** scanned the project directory and reported vulnerabilities in dependencies and Docker images.
- The vulnerabilities were output in a `report.txt` file, which was stored in a `Trivy/` directory within the workspace.
  
The **pipeline successfully failed** when critical vulnerabilities were found, demonstrating the ability to enforce security policies automatically.

## Recommendations
- **Extend vulnerability scan coverage**: Include scanning of other parts of the infrastructure or external dependencies.
- **Improve the reporting**: Use structured formats like SARIF or HTML for easier analysis of scan results.
- **Integrate with other tools**: Use other security tools like **OWASP Dependency-Check** or **SonarQube** for code analysis.
