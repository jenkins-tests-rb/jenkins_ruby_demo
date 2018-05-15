pipeline {
    agent {
        docker {
            image 'ruby'
                label 'docker'
                args  '-v /tmp:/tmp'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'bin/setup'
                sh 'PORT=5555 ruby main.rb &'
                sh 'curl http://localhost:5555/'
            }
        }
    }
}

