pipeline{
	agent any
	tools{
		maven 'maven3.9'
	}
	stages{
		stage("CheckoutCode"){
			steps{
				echo "Checkout Started"
				git branch: 'master',url: 'https://github.com/chinmay1998/Java_Project.git'
				echo "Checkout Completed"

			}
		
		}
		stage("BuildCode"){
			steps{
				echo "Build Started"
				sh 'mvn clean package'
				echo "Build Completed"

			}
		}
		stage("Deployment"){
			steps{
				echo "Deployment Started"
				deploy adapters: [tomcat9(credentialsId: 'tomcatcred',url: 'http://18.61.203.21:8080/')],contextPath: 'welcomeapp',war: '**/*.war'
				echo "Deployment Completed"

			}
		}
	}
}
