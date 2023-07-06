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
               sh 'jar -cvf AishwaryaSuresh_StudentSurveyForm.war -C src/main/webapp/ .'
               //sh 'echo ${BUILD_TIMESTAMP}'

            
            }
         }
      }
     
   }
}
                                                
