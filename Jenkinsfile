pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Compilando el proyecto...'
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Ejecutando pruebas...'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Desplegando aplicación...'
                sh '''
                docker build -t SemestralYGG .
                docker run -d -p 8080:8080 SemestralYGG
                '''
            }
        }
    }
}

