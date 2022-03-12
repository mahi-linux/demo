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
                bash pwd
                bash ls -altr
                bash "cat $file"
                bash $PATH
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
