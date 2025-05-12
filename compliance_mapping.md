# Compliance Mapping

This CI/CD Security PoC supports foundational security controls that map to commonly adopted standards such as **NIST 800-53**, **NIST 800-171**, and **PCI-DSS**.

---

## 🔐 NIST 800-53 (Rev. 5)

| Control ID | Control Name                     | How It’s Addressed                          |
|------------|----------------------------------|---------------------------------------------|
| SI-2       | Flaw Remediation                 | Trivy detects vulnerabilities early         |
| SI-4       | System Monitoring                | Trivy scanning can trigger alerts via CI    |
| CA-7       | Continuous Monitoring            | Integrating scans into CI ensures continuity|
| CM-8       | System Component Inventory       | Dockerized build system isolates components |

---

## 🛡 NIST 800-171

| Control ID | Control Name                           | How It’s Addressed                          |
|------------|----------------------------------------|---------------------------------------------|
| 3.11.2     | Scan for vulnerabilities               | Trivy scans source files and containers     |
| 3.14.1     | Identify and manage system flaws       | Integration into CI/CD supports early action|
| 3.14.4     | Update malicious code protection       | Detects CVEs in base images and code        |

---

## 💳 PCI-DSS v4.0

| Requirement | Control Description                                | How It’s Addressed                         |
|-------------|-----------------------------------------------------|--------------------------------------------|
| 6.3.2       | Security testing of application changes             | Jenkins triggers Trivy scan per pipeline   |
| 6.5.1       | Address common coding vulnerabilities               | Trivy detects known high/critical issues   |
| 11.2.1      | Internal vulnerability scanning                     | Automated scan built into CI/CD pipeline   |

---

## Notes

- This mapping supports baseline requirements and is not exhaustive.
- Further enhancements (e.g., signed SBOM, DAST tools) may be needed for full coverage in production environments.
