node {
   stage('init') {
      checkout scm
   }
   stage('build') {
      sh '''
         mvn spring-boot:run
       '''
   }
   stage('Create docker image') {
      container('docker') {
      
      }
   }
}
