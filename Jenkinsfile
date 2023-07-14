pipeline {
   environment {
        registry = "aishwaryasuresh08/studentsurvey645"
        registryCredential = credentials('docker-pass')
       
    }
   agent any

   stages {
      stage('Build') {
         steps {
            script{
               sh 'rm -rf *.war'
               sh 'jar -cvf AishwaryaSuresh_StudentSurveyForm.war -C src/main/webapp/ .'
               sh 'echo ${BUILD_TIMESTAMP}'
                sh 'docker login -u aishwaryasuresh08 -p ${registryCredential}'
               sh 'docker build -t aishwaryasuresh08/studentsurvey645 .'
               }
            }
         }



      stage("Pushing Image to Dockerhub"){
         steps{
            script{
                  sh 'docker push aishwaryasuresh08/studentsurvey645'
               
            }
         }
      }
    

     stage('Deploying Rancher to single pod') {
         steps {
            script{
               sh "kubectl set image deployment/aishwaryasuresh container-0=aishwaryasuresh08/studentsurvey645"
            }
         }
      }

      stage('Deploying Rancher as with load balancer') {
         steps {
            script{
               sh "kubectl set image deployment/aishwaryasuresh container-0=aishwaryasuresh08/studentsurvey645"
            }
         }
      }
   }
}

      
