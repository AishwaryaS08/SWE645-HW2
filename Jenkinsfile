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
               sh 'jar -cvf assignment.war -C src/main/webapp/ .'
               //sh 'echo ${BUILD_TIMESTAMP}'

               docker.withRegistry('',registryCredential){
                  def customImage = docker.build("AishwaryaS08/SWE645-HW2":${env.TIMESTAMP}")
               }
            }
         }
      }

      stage('Push Image to Dockerhub') {
         steps {
            script{
               docker.withRegistry('',registryCredential){
                  sh "docker push AishwaryaS08/SWE645-HW2:${env.TIMESTAMP}"
               }
            }
         }
      }

     
   }
}
                                                 }
