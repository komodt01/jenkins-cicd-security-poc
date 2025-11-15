
---

## 🔄 CI/CD Pipeline Overview

The Jenkins pipeline consists of the following stages:

1. **Terraform Init** – Initializes the Terraform working directory  
2. **Terraform Validate** – Validates configuration syntax  
3. **tfsec Scan** – Runs IaC static analysis for Terraform security issues  
4. **Trivy Scan** – Performs a filesystem scan of the Jenkins workspace  
   - Outputs results **directly to Jenkins console logs**  
   - No report files are generated or stored (simplifies PoC setup)  
5. **Terraform Plan & Apply** – Creates and applies infrastructure changes  

This workflow demonstrates how to layer security checks into infrastructure automation with minimal overhead.

---

## 📊 Architecture Diagram

Architecture and dataflow diagrams are provided in the `diagrams/` directory:

- `architecture_diagram.mmd`
- `dataflow_diagram.mmd`

You may export them as PNG if needed for documentation or LinkedIn.

---

## 📄 Documentation Overview

- **project_summary.md** – Problem, goals, methodology, results  
- **compliance_mapping.md** – NIST, NIST 171, PCI-DSS mapping  
- **risk_mitigation.md** – Risks + mitigations for CI/CD security  
- **cost_optimization.md** – Cost considerations for running Jenkins + scanning  
- **technologies.md** – What each tool is, how it works, and why it’s used  

---

## 📌 Why This Matters

Embedding security scanning directly into CI/CD pipelines:

- Identifies vulnerabilities **early** (shift-left approach)  
- Reduces operational and compliance risk  
- Improves cloud security posture  
- Provides repeatable validation of Terraform and application artifacts  
- Demonstrates DevSecOps workflows used in modern cloud teams  

This PoC shows how Terraform, tfsec, Trivy, and Jenkins can work together to build a measurable, automated, security-aware delivery pipeline.

---

## 🚫 Disclaimer

This project is for demonstration and portfolio purposes only.  
It is **not** intended to represent a production-ready CI/CD pipeline.
