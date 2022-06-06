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
                echo "${env.BUILD_NUMBER}"
                sh 'sudo docker build --tag jeetdocker21/test:$BUILD_NUMBER .'
                sh 'sudo docker push jeetdocker21/test:$BUILD_NUMBER'
                echo 'Succefully push ${env.BUILD_NUMBER} version of the app'
            }
        }
    }
}
