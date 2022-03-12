pipeline {
    agent { label 'ansible' }
    options {
    ansiColor('xterm')
    }
    
    stages {
        stage('custom-root-ca-validation') {
            steps {
                sh "${workspace}/test.sh"
            }
        }
    }
}
