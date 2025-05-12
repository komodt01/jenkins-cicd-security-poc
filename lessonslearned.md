# Lessons Learned

## ✅ What Went Well
- Trivy was successfully installed into a custom Jenkins Docker image.
- The CI/CD pipeline executed scans in a repeatable, containerized way.
- Permissions and volume mount issues were resolved through proper Docker volume mapping and pipeline directory handling.

## ⚠️ Challenges
- Jenkins initially failed to access Trivy output paths due to volume and file permission issues.
- Rebuilding Jenkins containers with `--build` was required to reflect Dockerfile updates.
- Manual directory creation on host OS didn't guarantee visibility in the Jenkins container.

## 🛠 Key Takeaways
- Always confirm that build context and workspace paths are valid inside Docker.
- Install all required scanning tools during Docker image build if CI container isolation is desired.
- Use `mkdir -p` in the pipeline to avoid write errors regardless of host setup.
- Keep your CI/CD PoC clean, modular, and mapped to frameworks like NIST or PCI for business value.
