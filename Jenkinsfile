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
    }
}