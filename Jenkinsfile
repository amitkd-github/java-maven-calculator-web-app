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
				sh 'echo sonar analysis completed'
			}
		}
		
	}
}
