ci-testing-python
==================

Sample Microservice App in Python for CI-CD and Testing Purpose using flask, pytest, pytest-flask, uber\'s test doubles package, tox with Dockerized environment on CI servers like Jenkins and Travis CI both application in docker and jenkins in docker.


Documentation
--------------

**Link :** http://ci_testing_python.readthedocs.io/en/latest/


Project Home Page
--------------------

**Link :** https://github.com/anirbanroydas/ci-testing-python



Details
--------


:Author: Anirban Roy Das
:Email: anirban.nick@gmail.com
:Copyright(C): 2017, Anirban Roy Das <anirban.nick@gmail.com>

Check ``ci-testing-python/LICENSE`` file for full Copyright notice.




Overview
---------

It is a Sample **Microservice** Application written in **Python** Language for **CI-CD** and **Testing Purpose** using `flask <flask.pocoo.org/>`_, `pytest <doc.pytest.org/>`_, `pytest-flask <https://pytest-flask.readthedocs.io/>`_, `uber\'s test doubles package <https://doubles.readthedocs.io/>`_, `tox <https://tox.readthedocs.io/>`_ with Dockerized environment and can used to learn, experiment with `docker <https://www.docker.com/>`_, testing, pytest and have beginner\'s introduction/hands-on with CI servers like `Jenkins <https://jenkins.io/>`_ and `Travis-CI <https://travis-ci.org>`_.




Technical Specs
----------------


:python 3.6: Python Language (Cpython)
:Flask: Micro Python Web Framework, good for microservice development and python WSGI apps.
:pytest: Python testing library and test runner with awesome test discobery
:pytest-flask: Pytest plugin for flask apps, to test fask apps using pytest library.
:Uber\'s Test-Double: Test Double library for python, a good alternative to the `mock <https://github.com/testing-cabal/mock>`_ library
:Jenkins (Optional): A Self-hosted CI server
:Travis-CI (Optional): A hosted CI server free for open-source projecs 
:Docker: A containerization tool for better devops


Features
---------

* Web App 
* Microservice
* Testing using Docker and Docker Compose
* CI servers like Jenkins, Travis-CI




Installation
------------

Dependencies
~~~~~~~~~~~~~

1. Docker
2. Make (Makefile)

See, there are so many technologies used mentioned in the tech specs and yet the dependencies are just two. This is the power of Docker. 

Install
~~~~~~~


* **Step 1 - Install Docker**

  Follow my another github project, where everythin related to DevOps and scripts are mentioned along with setting up a development environemt to use Docker is mentioned.

  	* Project: https://github.com/anirbanroydas/DevOps

 	* Go to setup directory and follow the setup instructions for your own platform, linux/macos

* **Step 2 - Install Make**
  ::

  		# (Mac Os)
  		$ brew install automake

  		# (Ubuntu)
  		$ sudo apt-get update
  		$ sudo apt-get install make




Usage
-----

After having installed the above dependencies, just run the following commands to use it:




Run
~~~~

The below commands will start everythin in development environment. To start in a production environment, suffix ``-prod`` to every **make** command.

For example, if the normal command is ``make start``, then for production environment, use ``make start-prod``. Do this modification to each command you want to run in production environment. 

**Exceptions:** You cannot use the above method for test commands, test commands are same for every environment. Also the  ``make system-prune`` command is standalone with no production specific variation (Remains same in all environments).

* **Start Applcation**
  ::

  		$ make clean
  		$ make build
  		$ make start

  		# OR

  		$ docker-compose up -d


    
  
* **Stop Application**
  ::

  		$ make stop

  		# OR

  		$ docker-compose stop


* **Remove and Clean Application**
  ::

  		$ make clean

  		# OR

  		$ docker-compose rm --force -v
  		$ echo "y" | docker system prune


* **Clean System**
  ::

  		$ make system-prune

  		# OR

  		$ echo "y" | docker system prune






Logging
~~~~~~~~


* To check the whole application Logs
  ::

  		$ make check-logs

  		# OR

  		$ docker-compose logs --follow --tail=10



* To check just the python app\'s logs
  ::

  		$ make check-logs-app

  		# OR

  		$ docker-compose logs --follow --tail=10 identidock





Test
~~~~

* To Test everything
  ::

  		$ make test


  Any Other method without using make will involve writing a lot of commands. So use the make command preferrably


* To perform Unit Tests
  ::

  		$ make test-unit


* To perform Component Tests
  ::

  		$ make test-component


* To perform Contract Tests
  ::

  		$ make test-contract


* To perform Integration Tests
  ::

  		$ make test-integration


* To perform End To End (e2e) or System or UI Acceptance or Functional Tests
  ::

  		$ make test-e2e

  		# OR

  		$ make test-system

  		# OR	

  		$ make test-ui-acceptance

  		# OR

  		$ make test-functional





Todo
-----

1. Add Blog post regarding this topic.

