pipeline {
    agent any 

    stages {
        stage('Build') {
            steps {
                echo 'Building application...'
                // Example: sh './mvnw clean install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Example: sh './mvnw test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to staging...'
            }
        }
    }
}
