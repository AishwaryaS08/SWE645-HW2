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
     steps{
                   sh 'docker build -t aishwaryasuresh08/asisgnmenttwo_as'
                
    }
     }

   }

  

   
}
                                                
