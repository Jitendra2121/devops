pipeline {
    agent any
    environment {
       BUILD_NUMBER_X = "${env.BUILD_NUMBER}"
    }
    stages {
        stage('Test') {
            steps {
                sh 'python3  --version'
            }
        }
        stage('Docker Build') {
            steps {
                echo "${env.BUILD_NUMBER}"
                sh 'sudo docker build --tag jeetdocker21/test:$BUILD_NUMBER .'
                sh 'sudo docker push jeetdocker21/test:$BUILD_NUMBER'
                echo 'Build Number: ' + env.BUILD_NUMBER_X
                echo "Succefully push the ${BUILD_NUMBER_X}th version of the python flask app"
            }
        }
        stage("Build_Number_Passing") {
            steps {
                build job: 'eks-gitops-final', parameters: [string(name: 'BUILD_NUMBER_X', value: "${env.BUILD_NUMBER}")]
                echo "Passing the Build Number: ${BUILD_NUMBER_X} to the eks-gitops job"
            }
        }
    }
}
