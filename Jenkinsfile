pipeline {
   environment {
        registry = "aishwaryasuresh08/studentsurvey645"
        registryCredential = 'registrycredential'
        TIMESTAMP = new Date().format("yyyyMMdd_HHmmss")
    }
   agent any

   stages {
      stage('Build') {
         steps {
            script{
               sh 'rm -rf *.war'
               sh 'jar -cvf AishwaryaSuresh_StudentSurveyForm.war -C src/main/webapp/ .'
               sh 'echo ${BUILD_TIMESTAMP}'

               docker.withRegistry('',registryCredential){
                  def customImage = docker.build("aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}")
               }
            }
         }
      }

      stage('Push Image to Dockerhub') {
         steps {
            script{
               docker.withRegistry('',registryCredential){
                  sh "docker push aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}"
               }
            }
         }
      }

      stage('Deploying Rancher to single pod') {
         steps {
            script{
               sh "kubectl set image deployment/aishwaryasureshcontainer-0=aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}"
            }
         }
      }

      stage('Deploying Rancher as with load balancer') {
         steps {
            script{
               sh "kubectl set image deployment/aishwaryasuresh container-0=aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}"
            }
         }
      }
   }
}
