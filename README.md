
### Build Image

```
docker build -t my-sonarqube .
docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 my-sonarqube
```

### Scan

```
sonar-scanner \
-Dsonar.projectKey=${project_name} \
-Dsonar.sources=. \
-Dsonar.host.url=http://localhost:9000 \
-Dsonar.login=${token} \
-Dsonar.branch.name=${branch_name}
```
