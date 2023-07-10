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
                   sh 'docker build -t aishwaryasuresh08/asisgnmenttwo_as'
                
    }
     }

              stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u aishwaryasuresh08 -p ${dockerhubpwd}'

}
                   sh 'docker push aishwaryasuresh08/asisgnmenttwo_as'
                }
            }
        }

   }

  

   
}
                                                
