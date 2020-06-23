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
                sh 'newman run Restful_Booker_Korrigerad.postman_collection.json --environment Restful_Booker.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
  }
}
        

