pipeline {
    agent { label 'ansible' }
    options {
    ansiColor('xterm')
    }
    
    parameters {
        file description: 'provide your custom root ca file in ".cer" format', name: '/tmp/custom-root-ca'
    }

    stages {
        stage('script file') {
            steps {
                pwd
                ls -altr
                sh "cat $file"
            }
        }
    }

    stages {
        stage('Generate hosts') {
            steps {
                sh "${workspace}/test.sh"
            }
        }
    }
}
