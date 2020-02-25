## Building and running Docker containers with Ansible

Prerequisites for Python installed using pip3:
1. requests
2. pytest

### Dockerfile
* The Dockerfile is using Red Hat's UBI 8. It installs java, downloads & setups tomcat and sample war.

### pytest
* The test_tomcat.py is the file for pytests it includes 2 tests checking that the application is running.
First it tests for a 200 OK status code and secondly makes sure that the body has an expected string.

### Ansible:

To run it just issue the following command:
```
ansible-playbook -v playbook.yml
```

* This will build and run the container if it's not already running.
* If the container is already running it will just output a debug message.