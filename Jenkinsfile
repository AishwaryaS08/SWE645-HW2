pipeline {
   environment {
        registry = "AishwaryaS08/SWE645-HW2"
        TIMESTAMP = new Date().format("yyyyMMdd_HHmmss")
    }
   agent any

   stages {
      stage('Build') {
         steps {
            script{
               sh 'rm -rf *.war'
               sh 'jar -cvf AishwaryaSuresh_StudentSurveyForm.war -C src/main/webapp/ .'
               //sh 'echo ${BUILD_TIMESTAMP}'

            
            }
         }
      }
      stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t aishwaryasuresh08/assignmenttwo_as:latest .'
      }
    }

      stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push aishwaryasuresh08/assignmenttwo_as:latest'
        }
      }
}
   }

  

   
}
                                                
