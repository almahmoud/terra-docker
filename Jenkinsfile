 pipeline {  
     agent any
     
       
    triggers {
        pollSCM('')
    }
    
   stages {
     
    stage('Terra Docker Git') {
      steps {
        git credentialsId: 'jenkins-ssh-github', url: 'git@github.com:DataBiosphere/terra-docker.git', branch: 'pr-test'
      }
    }

        stage('leonardo Docker Git') {
      steps {
        git credentialsId: 'jenkins-ssh-github', url: 'git@github.com:DataBiosphere/leonardo.git', branch: 'pr-test'
      }
    }
   }
 }