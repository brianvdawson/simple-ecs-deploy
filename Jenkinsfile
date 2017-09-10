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
                sh 'docker contaniner stop simple-web-app'
                sleep 10
                sh 'docker run -d -p 8082:8080 --name simple-web-app simple-ecs-webapp:latest'
                sleep 30
                sh 'docker contaniner stop simple-web-app'

            }
       }

       stage("Publish") {
            steps {
                echo 'Deploy to Docker Repository'
                sh 'docker tag simple-ecs-webapp:latest 050098408429.dkr.ecr.us-west-1.amazonaws.com/simple-ecs-webapp:latest'
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