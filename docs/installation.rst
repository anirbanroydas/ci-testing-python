Installation
=============

Prerequisites (Optional)
-------------------------

To safegurad secret and confidential data leakage via your git commits to public github repo, check ``git-secrets``.

This `git secrets <https://github.com/awslabs/git-secrets>`_ project helps in preventing secrete leakage by mistake.



Dependencies
-------------

1. Docker
2. Make (Makefile)

See, there are so many technologies used mentioned in the tech specs and yet the dependencies are just two. This is the power of Docker. 


   
Install
-------


* **Step 1 - Install Docker**

  Follow my another github project, where everything related to DevOps and scripts are mentioned along with setting up a development environemt to use Docker is mentioned.

    * Project: https://github.com/anirbanroydas/DevOps

  * Go to setup directory and follow the setup instructions for your own platform, linux/macos

* **Step 2 - Install Make**
  ::

      # (Mac Os)
      $ brew install automake

      # (Ubuntu)
      $ sudo apt-get update
      $ sudo apt-get install make

* **Step 3 - Install Dependencies**
  
  Install the following dependencies on your local development machine which will be used in various scripts.

  1. openssl
  2. ssh-keygen
  3. openssh





 

Travis Setup
~~~~~~~~~~~~~~~~~

These steps will encrypt your environment variables to secure your confidential data like api keys, docker based keys, deploy specific keys.
::

  $ make travis-setup



Jenkins Setup
~~~~~~~~~~~~~~~~~~~

These steps will encrypt your environment variables to secure your confidential data like api keys, docker based keys, deploy specific keys.
::

  $ make jenkins-setup

