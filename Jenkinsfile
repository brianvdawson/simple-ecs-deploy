pipeline {
    agent any
    stages{
       stage("Build") {
            steps {
                echo 'Build application'
                checkout scm
                sh 'cd simple-ecs-webapp; mvn clean install'

            }
       }

       stage("Package Image") {

            steps {
                echo 'Build container image'
                script{
                    docker.build('simple-ecs-webapp')
                }

            }
       }

       stage("Test") {
            steps {
                echo 'Func Test'
                sh 'docker run -p 8082:8080 simple-ecs-webapp:latest'

            }
       }

       stage("Publish") {
            steps {
                echo 'Deploy to Docker Repository'
                sh 'docker push 050098408429.dkr.ecr.us-west-1.amazonaws.com/simple-ecs-webapp'
            }
       }

      stage("Deploy") {
                  steps {
                      echo 'deployed'
                  }

      }

    }
}