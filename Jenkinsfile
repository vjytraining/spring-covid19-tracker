node {
   stage('init') {
      checkout scm
   }
   stage('build') {
      sh '''
         mvn spring-boot:run
         mvn clean package -Dboot
       '''
   }
   stage('Create docker image') {
      container('docker') {
      
      }
   }
}
