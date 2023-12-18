pipeline{
	agent any
	tools{
		maven 'maven3.9'
<<<<<<< HEAD
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
					deploy adapters: [tomcat9(credentialsId: 'tomcatcred',url:'http://18.61.203.21:8080/'),contextpath: 'welcomeapp',war: '**/*.war']
					echo "Deployemnt completed"
				}
			}

=======
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
>>>>>>> 6c1a66adbb71b6389bc5b7bf7f6ef1839bfbbe2d
	}
}
