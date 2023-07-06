pipeline {
  environment {
        registry = "AishwaryaS08/SWE645-HW2"
        registryCredential = 'dockerhub'
        TIMESTAMP = new Date().format("yyyyMMdd_HHmmss")
    }
    agent any

    stages {
        stage('Build') {
            steps {
                script{
               sh 'rm -rf *.war'
               sh 'jar -cvf StudentSurvey.war -C src/main/webapp/ .'

                }
            }
        }
      
    }
}
