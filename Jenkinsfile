node {
   stage('init') {
      checkout scm
    }
    stage('build') {
       sh '''
          mvn spring-boot:run
        '''
    }
    stage('Build image') {
       app = docker.build("vjytraining/testtracker") 
    }

    stage('test image') {
       app.inside {
        echo "test passed"
        }
    }

     stage('push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'DOCKER HUB VIJAY') {
            app.push("{env.BUILD_NUMBER}")
            app.push("latest")
         }
            echo "trying to docker image to docker hub"
     }
   
}
