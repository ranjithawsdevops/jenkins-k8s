pipeline {
    agent any
    options {
        timeout(time: 1,unit: 'HOURS')
    }
     stages {
        stage('Checkout')
		{
            
            steps {
				   git branch: 'main', url: 'https://github.com/ranjithawsdevops/jenkins-k8s-cluster.git'

            }
        }
    
		stage('PreCheck')
		{
		   
			   
	    	steps {
		      script {
		       env.BUILDME = "yes" //if yes then run below
		  
		    }
		}
		}
     	
        stage('Deploy Terraform') 
          {
          
			when {environment name: 'BUILDME', value: 'yes'}
			steps {

			  script {
			    dir('dev') {
			        sh 'ls'
			        sh 'sudo terraform init'
                                       sh 'sudo terraform plan'
                                       sh 'sudo terraform apply --auto-approve'
			    }
			  }
      
    }
  }
		 
    }
}

