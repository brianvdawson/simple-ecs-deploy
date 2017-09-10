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
            }
       }

       stage("Stage") {
            steps {
                echo 'Deploy to Stage'
            }
       }

      stage("Deploy") {
                  steps {
                      echo 'deployed'
                  }

      }

    }
}