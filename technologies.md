Technologies Used
🧩 Jenkins
What it is

Jenkins is an open-source automation server used to implement continuous integration and continuous delivery (CI/CD). It orchestrates build, test, and deployment workflows across development and security pipelines.

How it works

Jenkins executes defined pipeline stages when code changes are pushed to a repository or when jobs are manually triggered. It relies heavily on plugins to integrate with tools like GitHub, Docker, and security scanners. Pipelines can be defined via UI jobs or Jenkinsfiles for fully automated workflows.

Why we used it

To automate the end-to-end security scanning workflow and demonstrate how a CI/CD pipeline can enforce security controls early in the development process. Jenkins reflects real enterprise DevOps practices that hiring managers recognize immediately.

🔍 Trivy
What it is

Trivy is a vulnerability scanner for container images, file systems, IaC templates, and repositories. It provides fast and accurate detection of CVEs and misconfigurations.

How it works

Trivy analyzes a directory or container image using vulnerability databases (such as GitHub Security Advisories and other public feeds). It outputs findings that can be consumed by CI/CD systems to fail builds or trigger remediation workflows.

Why we used it

To demonstrate how security checks can be embedded directly into a CI/CD pipeline. By integrating Trivy into Jenkins, the PoC shows how organizations can identify vulnerability risk early, enforce remediation standards, and improve secure software delivery.

🐳 Docker
What it is

Docker is a containerization platform that packages applications and their dependencies in portable, isolated containers.

How it works

Docker creates lightweight environments using Dockerfiles. In this project, Jenkins runs inside a Docker container, with volumes mapped for persistence and to share data with the host machine. This ensures each pipeline run has a predictable, isolated environment.

Why we used it

To ensure consistent execution of Jenkins and Trivy across environments. Docker provides portability, reproducibility, and isolation — all essential for reliable CI/CD pipelines and security testing.
