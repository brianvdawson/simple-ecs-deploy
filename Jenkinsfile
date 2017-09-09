pipeline {
    agent any
    stages{
       stage("build") {
            steps {
                echo 'Build'
                sh 'mvn --version'

            }
       }

       stage("test") {
            steps {
                echo 'Test'
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
                      echo 'deploy'
                  }
      }

    }
}