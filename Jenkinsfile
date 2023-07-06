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

                  docker.withRegistry('',registryCredential){
                  def customImage = docker.build("aishwaryasuresh/assignmenttwo:${env.TIMESTAMP}")
               }
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
