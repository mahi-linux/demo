// Must install the AnsiColor Plugins for color text

pipeline {
    agent { label 'ansible' }
    options {
    ansiColor('xterm')
    }
    
    parameters {
        text(description: 'past the custom-root-ca certificate starting with "-----BEGIN CERTIFICATE-----" and ending with "-----END CERTIFICATE-----"', name: 'CustomRootCA')
    }
    
    stages {
        stage('custom-root-ca-validation') {
            steps {
                sh "${workspace}/CustomRootCA.sh"
            }
        }
    }
}
