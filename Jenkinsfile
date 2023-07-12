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
            
               }
            }
         }
      

      stage('Push Image to Dockerhub') {
         steps {
            script{
            
                  sh "docker push aishwaryasuresh08/studentsurvey645:${env.TIMESTAMP}"
                  withCredentials([string(credentialsId: '7286e43a-34d7-467e-a52b-2140bd52735e', variable: '')]) {
    sh 'docker login -u aishwaryasuresh08 -p ${docker-pass}'

}
                   sh 'docker push aishwaryasuresh08/studentsurvey645:0.1'
}
               
            }
         }
      

   }
}
