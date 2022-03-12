pipeline {
    agent { label 'ansible' }
    options {
    ansiColor('xterm')
    }
    
    parameters {
        base64File 'custom-root-ca'
    }

    stages {
        stage('script file') {
            steps {
                wrap([$delegate: parameters.custom-root-ca]) {
                  sh 'cat custom-root-ca'
                }
            }
        }

        stage('Generate hosts') {
            steps {
                sh "${workspace}/test.sh"
            }
        }
    }
}
