pipeline {
    agent any
    tools {
        maven 'Maven 3'
    }
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
                sh """
                docker build -t index.html .
                docker run -d -p 8081:8080 index.html
                """
            }
        }
    }
}

