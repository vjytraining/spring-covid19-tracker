node {
   stage('init') {
      checkout scm
   }
   stage('build') {
      sh '''
         mvn spring-boot:run
         mvn clean package -Dboot
         java -jar target/spring-covid19-tracker-0.0.1-SNAPSHOT.jar
       '''
   }
}
