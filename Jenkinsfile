pipeline{
	agent any
	tools{
		maven 'maven3.9'
		}
		stages{
			stage("CheckoutCode"){
				steps{
					echo "Checkout started"
					git branch: 'master',url: 'https://github.com/chinmay1998/Java_Project.git'
					echo "checkout completed"
				}
			}
		
			stage("BuildCode"){
				steps{
					echo "Build started"
					sh 'mvn clean package'
					echo "Build completed"
				}
			}
			stage("Deployment"){
				steps{
					echo "deployment started"
					deploy adapters: [tomcat9(credentialsId: 'tomcatcred',url:'http://18.61.203.21:8080/')],contextPath: 'welcomeapp',war: '**/*.war'
					echo "Deployemnt completed"
				}
			}

		}
	
}

