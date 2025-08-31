pipeline {
    agent any

    environment {
        version = '1.0.0'
    }

    stages {
        stage("1- Construindo Imagem Docker v${version}") {
            steps {
                echo "1- Construindo Imagem Docker v${version}..."
            }
        }
        stage('2- Enviando imagem para o Repositório') {
            steps {
                echo '2- Enviando imagem para o Repositório...'
            }
        }

        stage('3- Deploy via ArgoCD') {
            steps {
                echo '3- Deploy via ArgoCD...'
            }
        }
        stage('4- Valdando Deploy') {
            steps {
                echo '4- Valdando Deploy...'
            }
        }
    }

}