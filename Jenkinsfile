pipeline {
    agent any
    stages{
       stage("Build") {
            steps {
                echo 'Build'
                sh 'cd simple-ecs-webapp; mvn clean install'

            }
       }

       stage("Package Image") {

            steps {
                echo 'Test'
                sh 'sudo docker build -t simple-ecs-webapp .'

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