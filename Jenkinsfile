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
                    sh 'docker login -u miteshdhruv -p Mitesh@123'
                    sh 'docker tag jar-application miteshdhruv/jar-application'
                    sh 'docker push miteshdhruv/jar-application '
                }
              }
            }
        }
    }
}