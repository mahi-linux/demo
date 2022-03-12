pipeline {
    agent { label 'ansible' }
    options {
    ansiColor('xterm')
    }
    
    parameters {
        file description: 'provide your custom root ca file in ".cer" format', name: 'custom-root-ca'
    }

    stages {
        stage('script file') {
            steps {
              withFileParameter('custom-root-ca') {
                sh 'cat $custom-root-ca'
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
