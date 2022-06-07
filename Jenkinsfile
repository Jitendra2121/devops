pipeline {
    agent any
    environment {
       BUILD_NUMBER_X = "${env.BUILD_NUMBER}"
    }
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
                echo 'Build Number: ' + env.BUILD_NUMBER_X
                echo "Succefully push the version ${BUILD_NUMBER_X} of the python flask app"
            }
        }
        stage("Build_Number_Passing") {
            steps {
                build job: 'eks-gitops-final', parameters: [string(name: 'BUILD_NUMBER_X', value: "${env.BUILD_NUMBER}")]
            }
        }
    }
}
