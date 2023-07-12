pipeline {
   environment {
        registry = "aishwaryasuresh08/studentsurvey645"
        registryCredential = credentials('docker-pass')
      DOCKERFILE_PATH='Dockerfile'
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

               
               }
            }
         }

      stage('Build Docker Image') {
         steps {
            script {
               sh "docker build -t ${registry}:${BUILD_TIMESTAMP} -f ${DOCKERFILE_PATH} ."
            }
         }
      }

      stage("Pushing Image to Dockerhub"){
         steps{
            script{
               sh 'docker login -u aishwaryasuresh08 -p ${registryCredential}'
               sh "docker build --tag  ${registry}:${BUILD_TIMESTAMP}"
                  sh 'docker push aishwaryasuresh08/studentsurvey645:${BUILD_TIMESTAMP}'
               
            }
         }
      }
    }
}

      
