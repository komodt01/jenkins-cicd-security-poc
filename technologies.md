# Technologies Used

## 🧩 Jenkins
**What it is:**  
Jenkins is an open-source automation server used to implement continuous integration and continuous delivery (CI/CD).  
**How it works:**  
Jenkins executes defined pipeline stages when code changes are committed or jobs are manually triggered. It supports plugins for automation and integrations.  
**Why we used it:**  
To automate the security scanning workflow and demonstrate a secure CI/CD PoC using familiar DevOps practices.

---

## 🔍 Trivy
**What it is:**  
Trivy is a comprehensive, easy-to-use vulnerability scanner for container images, file systems, and repositories.  
**How it works:**  
It scans the target directory or container image for known vulnerabilities using public vulnerability databases and outputs a security report.  
**Why we used it:**  
To demonstrate how real-time vulnerability scanning can be integrated directly into the CI/CD pipeline, identifying risks early in the software delivery process.

---

## 🐳 Docker
**What it is:**  
Docker is a platform that uses OS-level virtualization to deliver software in packages called containers.  
**How it works:**  
Each Jenkins environment is isolated and built using a Dockerfile, with volumes mapped to share data between host and container.  
**Why we used it:**  
To ensure consistency, portability, and isolation across the Jenkins + Trivy environment during PoC execution.
