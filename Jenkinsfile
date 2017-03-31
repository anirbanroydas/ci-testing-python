#!groovy

node {
	
	stage('Print Env Before source checkout') {
		
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

	stage('Print Env After source checkout') {
		
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
	
	stage('Build') {
		echo "Build Stage Starting"
		echo "Build Stage Finsihed"
	}

	stage('Docker-Functionality-Test') {
		echo "Chekcking Docker functionality..."
		echo "docker version"
		sh "sudo docker version"
		echo "docker images"
		sh "sudo docker images"
		echo "docker ps -a"
		sh "sudo docker ps -a"

	}

	stage('Unit-Test') {
		echo "Unit Tests Starting"
		sh "make test-unit"
		echo "Unit Tests Finished"
	}

	stage('Component-Test') {
		echo "Component Tests Starting"
		sh "make test-component"
		echo "Component Tests Finished"
	}
	
	stage('Directory-Script-Test') {
		echo "Chekcking Directory and Shell scripting power"
		echo "ls -a (first)"
		sh "ls -a"

		dir('ci_testing_python/app') {
			echo "inside directory ci_testing_python/app"
			echo "ls -a (seconds)"
			sh "ls -a"
			
		}

		echo "ls -a (third)"
		sh "ls -a"
				
	}
	
	
}