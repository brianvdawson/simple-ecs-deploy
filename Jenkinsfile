pipeline {
    agent any
    stages{
       stage("build") {
            steps {
                echo 'Build'
                sh 'cd simple-ecs-webapp'
                sh 'mvn clean install'

            }
       }

       stage("Package Image") {
            steps {
                echo 'Test'
                docker.build('simple-ecs-webapp')
            }
       }

       stage("func test") {
            steps {
                echo 'Func Test'
            }
       }

       stage("stage") {
            steps {
                echo 'Deploy to Stage'
            }
       }

      stage("deploy") {
                  steps {
                      echo 'deployed'
                  }

      }

    }
}