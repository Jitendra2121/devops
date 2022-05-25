pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'sudo docker build --tag jeetdocker21/test:python-app-01 .'
                sh 'sudo docker push jeetdocker21/test:python-app-01'
            }
        }
    }
}
