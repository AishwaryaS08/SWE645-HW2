pipeline {
  environment {
        registry = "AishwaryaS08/SWE645-HW2"
        registryCredential = 'Docker'
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


      stage('Push Image to Dockerhub') {
         steps {
            script{
               docker.withRegistry('',registryCredential){
                  sh "docker push aishwaryasuresh/assignmenttwo:${env.TIMESTAMP}"
               }
            }
         }
      }
      
    }
}
