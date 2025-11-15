pipeline {
    agent any
    environment {
        TF_IN_AUTOMATION = "true"
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform -chdir=terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform -chdir=terraform validate'
            }
        }

        stage('Static Security Scan (tfsec)') {
            steps {
                sh 'tfsec terraform/'
            }
        }

        stage('Trivy Scan') {
            steps {
                sh '''
                    echo "Running Trivy filesystem scan against workspace..."
                    trivy fs . || true
                '''
            }
        }

        stage('Terraform Plan & Apply') {
            steps {
                sh 'terraform -chdir=terraform plan -out=tfplan'
                sh 'terraform -chdir=terraform apply tfplan'
            }
        }
    }
}
