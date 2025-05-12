# Jenkins CI/CD Security PoC with Trivy

This project demonstrates how to integrate security scanning into a Jenkins pipeline using [Trivy](https://github.com/aquasecurity/trivy). The PoC showcases how container-based CI/CD workflows can proactively detect vulnerabilities in application code and infrastructure artifacts.

---

## 🧩 Technologies Used
- **Jenkins** – Automates the build and test workflow
- **Trivy** – Performs file system and image vulnerability scans
- **Docker** – Containerizes Jenkins and builds reproducible environments

See [`technologies.md`](./technologies.md) for full descriptions.

---

## 🛠️ Project Structure

```
├── docker-compose.yml
├── Dockerfile (installs Jenkins + Trivy)
├── Jenkinsfile (defines pipeline stages)
├── Trivy/ (scan reports)
├── project_summary.md
├── compliance_mapping.md
└── technologies.md
```

---

## 🔄 CI/CD Pipeline Overview

1. Jenkins builds and runs inside Docker
2. A pipeline is triggered manually or via commit
3. Trivy scans the workspace and outputs results to `Trivy/report.txt`
4. (Optional) Jenkins can archive scan reports or fail on high/critical issues

---

## 📄 Documentation

- [`project_summary.md`](./project_summary.md) – Problem, goals, results
- [`compliance_mapping.md`](./compliance_mapping.md) – Standards alignment
- [`technologies.md`](./technologies.md) – What/why/how of tools used

---

## 📌 Why This Matters

Security scanning as part of CI/CD ensures vulnerabilities are caught early—shifting security left and improving software quality and compliance.

> This PoC proves the feasibility and value of integrating vulnerability scanning into DevSecOps workflows.

---

## 🚫 Disclaimer

This project is for demonstration purposes only and does not represent a production-ready security pipeline.
