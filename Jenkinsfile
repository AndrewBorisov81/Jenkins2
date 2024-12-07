pipeline {
    agent {
        docker {
            image 'cpp-hello-world'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'g++ -o hello hello.cpp'
            }
        }
        stage('Run') {
            steps {
                sh './hello'
            }
        }
    }
}

