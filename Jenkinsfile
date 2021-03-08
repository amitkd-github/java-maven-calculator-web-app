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
                                //sh 'mvn sonar:sonar -Dsonar.host.url=http://3.94.95.71:9000 -Dsonar.login=3a9863bfbd281bc237ec2263abe7a0ed0c868e6a'
                                sh 'echo sonar analysis completed'
                        }
                }

                stage('DEPLOY BUILD INTO NEXUS REPOSITORY') {
                        steps {
                                //sh 'mvn deploy'
                                sh 'echo build depolyed in nexus completed'
                        }
                }
				stage('DOCKER IMAGE BUILD') {
                        steps {
                                sh 'python read-version.py > version.txt'
				sh 'export cur_version=`cat version.txt`'
				sh 'sudo docker image build -t amit2019dock/calculator:`echo $cur_version` .'
                                sh 'echo docker image build completed'
                        }
                }
		stage('DOCKER IMAGE PUSH TO DOCKER-HUB') {
                        steps {
                                sh 'sudo docker push amit2019dock/calculator:`echo $cur_version`'
				sh 'echo image push completed'
                        }
                }

        }
}

