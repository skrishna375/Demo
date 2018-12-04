pipeline {
         agent any
         stages {
                 stage('One') {
                 steps {
                     echo 'Hello  User, Welcome to jenkins pipeline learning'
                 }
                 }
                 stage('Build') {
                 steps {
                    echo 'Proceed with stage2'
		    sh 'cd jenkins/'
		    sh 'mvn clean install'
		 }
		 post {
				success {
					junit testResults: 'target/surefire-reports/**/*.xml', allowEmptyResults: true
				}
		}
                 }
                 stage('Docker Build') {
                 steps {
                       echo "Building image"
			sh 'docker build . -t springdemo'
                 }
                 }
}
}
