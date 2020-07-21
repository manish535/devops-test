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
                  echo "testing"
                 //docker.build registry + ":$BUILD_NUMBER"
                }
          }
      }
      stage('Publish') {
           steps {
              withDockerRegistry(credentialsId: 'ecr:ap-south-1:aws_cred', url: 'https://131615286653.dkr.ecr.ap-south-1.amazonaws.com') {
                sh 'docker build -t cogknit .'
                sh 'docker tag cogknit:latest 131615286653.dkr.ecr.ap-south-1.amazonaws.com/cogknit":$BUILD_NUMBER"'
                sh 'docker push 131615286653.dkr.ecr.ap-south-1.amazonaws.com/cogknit":$BUILD_NUMBER"'
            }
          }
      }
   }
}
