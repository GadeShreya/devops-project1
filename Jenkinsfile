pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                // Clone your GitHub repository
                git 'https://github.com/GadeShreya/devops-project1.git'

                // Run the shell script to build and deploy the application
                bat 'deploy.bat'
            }
        }
    }
}

