pipeline {

   environment {
        registry = "manish8607/cogknit"
        registryCredential = "docker-creds"
        dockerImage = ""
   }

   agent any

   stages {

      stage('Cloning Git') {
         steps {
            git branch: 'master', url: 'https://github.com/manish535/devops-test.git'
         }
      }
      stage('Building Image') {
          steps {
              script {
                 docker.build registry + ":$BUILD_NUMBER"
                }
          }
      }
      stage('Publish') {
           steps {
              withDockerRegistry(credentialsId: 'docker-creds', url: '') {
                sh 'docker push "$registry:$BUILD_NUMBER"'
                
            }
          }
      }
   }
}
