Jenkins CI/CD Security PoC with Trivy

This Proof of Concept demonstrates how to embed security scanning directly into a Jenkins-based CI/CD pipeline using Trivy. The project highlights how containerized CI/CD workflows can proactively detect vulnerabilities in application code, dependencies, and build artifacts, supporting secure DevSecOps practices.

🧩 Technologies Used

Jenkins – Automates build, test, and pipeline execution
Trivy – Performs vulnerability scanning across files, containers, and artifacts
Docker – Runs Jenkins in a containerized environment for consistency and portability

See technologies.md for full descriptions of each technology (What it is, How it works, Why we used it).

🛠️ Project Structure
├── docker-compose.yml
├── Dockerfile                 # Jenkins container with Trivy installed
├── Jenkinsfile                # CI/CD pipeline definition
├── Trivy/
│   └── report.txt             # Vulnerability scan outputs
├── project_summary.md         # Problem, goals, results, recommendations
├── compliance_mapping.md      # Standards alignment (NIST/ISO/OWASP)
└── technologies.md            # What/Why/How of each component used

🔄 CI/CD Pipeline Overview

Jenkins runs inside a Docker container using the provided docker-compose.yml

The pipeline is triggered manually or via a commit (optional Git integration)

Jenkins executes build stages as defined in the Jenkinsfile

Trivy scans the Jenkins workspace
→ Output is saved to Trivy/report.txt

(Optional) Jenkins can:
Archive scan results
Fail the build on High or Critical vulnerabilities
Integrate results into dashboards or alerting workflows

📄 Documentation Overview

project_summary.md – Business problem, PoC goals, methodology, and results
compliance_mapping.md – NIST/ISO/OWASP control alignment
technologies.md – What each tool is, how it works, and why it is used

📌 Why This Matters
Integrating vulnerability scanning into CI/CD workflows ensures that security controls are applied consistently and early in the development lifecycle.
This PoC demonstrates how DevSecOps practices:

Reduce security risk
Enable early detection of vulnerabilities
Improve audit readiness and compliance
Strengthen software delivery quality

The project provides a realistic, hands-on example of shifting security left in a modern cloud-aligned CI/CD pipeline.

🚫 Disclaimer

This project is for demonstration and educational purposes only.
It is not intended to represent a production-ready security pipeline.
