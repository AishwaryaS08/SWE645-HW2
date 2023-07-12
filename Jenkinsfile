pipeline {
   environment {
        DOCKERHUB_PASS = credentails ('docker-pass')
    }
   agent any

   stages {
      stage('Build') {
                  steps {
            script
                     {
               sh "docker login -u aishwaryasuresh08 -p ${DOCKERHUB_PASS}"
                  def customImage = docker.build("aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}")
               }
            }
         }
      

      stage('Push Image to Dockerhub') {
         steps {
            script{
            
                  sh "docker push aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}"
               
            }
         }
      }

   }
}
