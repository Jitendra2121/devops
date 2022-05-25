pipeline {
    agent {
        docker { image 'python:alpine3.7' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python --version'
            }
        }
    }
}
