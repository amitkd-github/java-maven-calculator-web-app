pipeline {
	agent {
		node {
			label 'java-build-srv1'
		}
	}
	
	stages {
		stage('SCM') {
			steps {
				git 'https://github.com/amitkd-github/java-maven-calculator-web-app.git'
			}
		}
		stage('BUILD') {
			steps {
				sh 'mvn clean package'
				sh 'echo build completed'
			}
		}
		stage('UNIT TEST') {
			steps {
				sh 'mvn test'
				sh 'echo unit test completed'
			}
		}
		stage('SONAR QUBE ANALYSIS') {
			steps {
				sh 'mvn sonar:sonar -Dsonar.host.url=http://3.94.95.71:9000 -Dsonar.login=3a9863bfbd281bc237ec2263abe7a0ed0c868e6a'
				sh 'echo sonar analysis completed'
			}
		}
		
	}
}

