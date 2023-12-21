pipeline{
environment{
registry = "arxxinsanexx/banque"
registryCredential = 'dockerhub'
dockerImage = ''
}

agent any

stages {
  stage('Git checkout'){
    steps {
      checkout scm
    }
  }
  stage('Building image'){
    steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
      }
    }
  }
  stage('Publish Image'){
    steps {
      script {
        docker.withRegistry('', registryCredential ) {
        dockerImage.push()
        dockerImage.push("latest")
      }
        echo "trying to push Docker Build to DockerHub"
    }
  }
}
stage('Remove Unused docker image'){
    steps {
      bat "docker rmi $registry:$BUILD_NUMBER"
    }
  }
        stage('Deploy'){
     steps{
            bat 'docker create'
             bat 'docker run'
            }
        }
  
}

}
