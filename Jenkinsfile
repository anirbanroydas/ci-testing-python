#!groovy

node {
	
	stage('test Jenkinsfile') {
		echo "First Jenkinsfile test"
	}

	stage('Pring Env Before source checkout') {
		
		echo "Branch Name: ${env.BRANCH_NAME}"
		echo "BUILD_NUMBER : ${env.BUILD_NUMBER}"
		echo "BUILD_ID : ${env.BUILD_ID}"
		echo "JOB_NAME: ${env.JOB_NAME}"
		echo "BUILD_TAG : ${env.BUILD_TAG}"
		echo "EXECUTOR_NUMBER : ${env.EXECUTOR_NUMBER}"
		echo "NODE_NAME: ${env.NODE_NAME}"
		echo "NODE_LABELS : ${env.NODE_LABELS}"
		echo "WORKSPACE : ${env.WORKSPACE}"
		echo "JENKINS_HOME : ${env.JENKINS_HOME}"

	}

	stage('Checkout source code') {
		echo "Checking out source code"
		checkout scm
	}

	stage('Pring Env After source checkout') {
		
		echo "Branch Name: ${env.BRANCH_NAME}"
		echo "BUILD_NUMBER : ${env.BUILD_NUMBER}"
		echo "BUILD_ID : ${env.BUILD_ID}"
		echo "JOB_NAME: ${env.JOB_NAME}"
		echo "BUILD_TAG : ${env.BUILD_TAG}"
		echo "EXECUTOR_NUMBER : ${env.EXECUTOR_NUMBER}"
		echo "NODE_NAME: ${env.NODE_NAME}"
		echo "NODE_LABELS : ${env.NODE_LABELS}"
		echo "WORKSPACE : ${env.WORKSPACE}"
		echo "JENKINS_HOME : ${env.JENKINS_HOME}"

	}
	
	stage('Test bash script') {
		echo "Testing bash script"
		sh './testbash.sh'
	}

	stage('Test bash script inside a folder') {
		echo "Testing bash script inside a folder"
		sh './identidock/app/testbash.sh'
	}
	
	stage('Test docker functionality') {
		echo "Chekcking Docker functionality..."
		echo "docker version"
		sh "sudo docker version"
		echo "docker images"
		sh "sudo docker images"
		echo "docker ps"
		sh "sudo docker ps"

		dir('identidock') {
			echo "inside directory identidock"
			
		}
		
			
	}
	
	
}