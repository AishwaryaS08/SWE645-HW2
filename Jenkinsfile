pipeline {
   environment {
        registry = "aishwaryasuresh08/studentsurvey645"
        registryCredential = credentials('docker-pass')
      DOCKERFILE_PATH='Dockerfile'
      
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
               sh 'docker build -t studentsurvey6451 .'
               }
            }
         }



      stage("Pushing Image to Dockerhub"){
         steps{
            script{
                  sh 'docker push aishwaryasuresh08/studentsurvey6451'
               
            }
         }
      }
    }
}

      
