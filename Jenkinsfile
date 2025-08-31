pipeline {
    agent any

    stages {
        stage("1 Construindo Imagem Docker v}") {
            steps {
                echo "1 Construindo Imagem Docker version ${env.BUILD_ID}"
                script {
                    dockerapp = docker.build("nunonaweb/plataform_engineering:${env.BUILD_ID}")

                }
            }
        }

        stage('2 Enviando imagem para o Repositório') {
            steps {
                echo '2 Enviando imagem para o Repositório...'
            }
        }

        stage('3 Deploy via ArgoCD') {
            steps {
                echo '3 Deploy via ArgoCD...'
            }
        }
        stage('4 Valdando Deploy') {
            steps {
                echo '4 Valdando Deploy...'
            }
        }
    }

}