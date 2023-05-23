pipeline {
    agent any
    stages{
        stage('GIt clone the code'){
            steps{
                git branch: 'main', url: 'https://github.com/MiteshDhruv/devops-project.git'
                sh 'mvn clean install'
            }
        }

        stage('Build a docker image from a Dockerfile'){
            steps{
                script{
                    sh 'docker build -t jar-application .'
                }
            }
        }

        stage('push image to dockerHub'){
            steps{
              script{
               withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhub-pwd')]) {
                    sh 'docker login -u miteshdhruv9@gmail.com -p ${dockerhub-pwd}'
                    sh 'docker push jar-application '
                }
              }
            }
        }
    }
}