node {
   stage('init') {
      checkout scm
    }
    stage('build') {
       sh '''
          mvn clean package
        '''
    }
    stage('Build image') {
       app = docker.build("vjytraining/testtracker") 
    }

     stage('push image') {
        docker.withRegistry('https://hub.docker.com/repository/docker/vjytraining/testtracker', 'DOCKER HUB VIJAY') {
            app.push("{env.BUILD_NUMBER}")
            app.push("latest")
         }
            echo "trying to docker image to docker hub"
     }
   
}
