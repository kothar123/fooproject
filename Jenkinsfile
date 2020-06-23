pipeline {
agent any
  stages {
    stage('Checkout') {
       steps {
         git 'https://github.com/kothar123/fooproject.git'
   }
  }
        stage('newman') {
            steps {
                sh 'newman run RestfulBookerKorrigerad.postman_collection.json --environment RestfulBooker.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
  }
}
        

