pipeline {  
    agent any    
    tools{
        maven "Maven-3.9.9"
    }
    stages {
        stage('Clone') {
            steps {
               git 'https://github.com/tiencuckoo/Team5_Pipeline_Project.git'
            }
        }
        stage('Build') {
            steps {
               sh 'mvn clean package'
            }
        }        
    }
}
