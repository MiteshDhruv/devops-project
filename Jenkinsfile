pipeline {
    agent any
    stages{
        stage('GIt clone the code'){
            steps{
                checkout([$class: 'GitSCM', branches: '*/main', url: 'https://github.com/MiteshDhruv/devops-project.git'])
                sh 'mvn clean install'
            }
        }

    }
}