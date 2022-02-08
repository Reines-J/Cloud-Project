```
helm repo add jenkins https://charts.jenkins.io
```

```
helm install jenkins jenkins/jenkins \
--namespace ci \
--values jenkins_values.yml
```

```
helm upgrade jenkins jenkins/jenkins \
--namespace ci \
--values jenkins_values.yml
```
