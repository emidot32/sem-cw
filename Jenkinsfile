pipeline {
    agent any

    stages {
        stage('pre-build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('build') {
            steps {
                sh 'python3 setup.py build'
            }
        }

        stage('test') {
            steps {
                script {
                    sh 'python3 -m pytest test'
                }
            }
        }

        stage('deploy') {
            steps {
                 echo 'It would have been cool to use docker to build image and start it, but docker does not want to work inside jenkins image'
            }
        }
    }
}