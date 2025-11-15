Compliance Mapping

This CI/CD Security Proof of Concept supports foundational security controls aligned to widely adopted industry standards, including NIST 800-53 Rev. 5, NIST 800-171, and PCI-DSS v4.0.
While this PoC is not intended to be production-grade, it demonstrates how automated vulnerability scanning within CI/CD contributes to baseline compliance requirements.

NIST 800-53 (Rev. 5)
| Control ID | Control Name               | How It’s Addressed                                                             |
| ---------- | -------------------------- | ------------------------------------------------------------------------------ |
| **SI-2**   | Flaw Remediation           | Trivy detects vulnerabilities early in the build process.                      |
| **SI-4**   | System Monitoring          | Trivy scanning results can be monitored, logged, and used to trigger alerts.   |
| **CA-7**   | Continuous Monitoring      | Automated CI/CD scanning provides continuous visibility into security posture. |
| **CM-8**   | System Component Inventory | Dockerized build environments maintain consistent component inventories.       |

NIST 800-171
| Control ID | Control Name                     | How It’s Addressed                                                        |
| ---------- | -------------------------------- | ------------------------------------------------------------------------- |
| **3.11.2** | Scan for vulnerabilities         | Trivy scans file systems and container images for known CVEs.             |
| **3.14.1** | Identify and manage system flaws | Vulnerabilities are identified early in the CI/CD lifecycle.              |
| **3.14.4** | Update malicious code protection | Scanning of base images helps detect outdated or vulnerable dependencies. |

PCI-DSS v4.0
| Requirement | Control Description                     | How It’s Addressed                                                       |
| ----------- | --------------------------------------- | ------------------------------------------------------------------------ |
| **6.3.2**   | Security testing of application changes | Every pipeline run triggers Trivy scanning as part of CI.                |
| **6.5.1**   | Address common coding vulnerabilities   | Trivy identifies known High/Critical vulnerabilities in code and images. |
| **11.2.1**  | Internal vulnerability scanning         | Jenkins automates internal scans through integrated workflows.           |

