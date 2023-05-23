pipeline {
    agent any
    stages{
        stage('GIt clone the code'){
            steps{
                git branch: 'main', url: 'https://github.com/MiteshDhruv/devops-project.git'
                sh 'mvn clean install'
            }
        }

    }
}