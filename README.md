# kube-selenium-demo
## API and Web Selenium hub with Kubernetes Demo
### Run tests in the Selenium Hub.
- To get the IP - there are several ways to get the IP, the one I recommend which will also be easier for you to remember is using the kubectl to describe the selenium-hub.
  - Kubectl describe pod selenium-hub
  - All the information about the selenium-hub will be rendered. You want to pay attention to the value of the Node - minikube/XXX.XX.XX.X
  - The IP value will be listed as the value of Node
- Selenium test suite - 
The document assumes that you know how to run selenium tests remotely using the remote function provided by selenium.
  - [Set up the Kubernetes cluster using this document](http://www.ruthtech.com/?p=2608)
  - To run tests in the Kubernetes cluster; your remote url needs to be updated with the IP obtained from describing service.yml and the nodePort provided. 
     - For example ⇒ http://XXX.XX.XX.X:30001/wd/hub
  - Run your tests with your usual commands - `rspec tests/spec/*`
- TIP - Write a script to check that the hub’s availability before running test - http://XXX.XX.XX.X:30001/wd/hub/status

