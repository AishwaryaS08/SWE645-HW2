pipeline {
   environment {
        registry = "AishwaryaS08/SWE645-HW2"
        TIMESTAMP = new Date().format("yyyyMMdd_HHmmss")
    }
   agent any

   stages {
      stage('Docker Build') {
    	agent any
     steps{
                   sh 'sudo docker build -t aishwaryasuresh08/asisgnmenttwo_as .'                
    }
     }
   }
   
}
                                                
