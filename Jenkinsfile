pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        
        stage('Azure Deployment') {
            steps {
                script {
                    // Use Azure CLI or Azure SDK to deploy additional resources if needed
                }
            }
        }
    }
    
    post {
        always {
            // Clean up resources or perform post-deployment tasks if needed
        }
    }
}
