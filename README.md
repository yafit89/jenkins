
# install docker:
sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
newgrp docker
sudo chmod 666 /var/run/docker.sock


# Run Jenkins

docker run -d \
    -p 8080:8080 \
    -p 50000:50000 \
    --restart=on-failure \
    -v jenkins_home:/var/jenkins_home \
    --name=jenkins \
    jenkins/jenkins:lts


--------

# Configure Github
create secret

--------

# Configure Branchs with regex
^main|dev|feature.*$


--------

# Create first pipeline


--------

# Install plugin
stage view

--------

rerun with replay:
    def test = 2+2 > 3 ? 'true' : 'false'
    echo test
and

Show runs on in the container (working directory)

and
restart from stage

--------

push -> in jenkins config + add webhook in git
and
poll -> in pipeline config

--------

install agent:

java:
sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
sudo yum install -y java-17-amazon-corretto-headless
java -version


agent { label 'cicd' }

----------

minikube start -p jenkins

https://github.com/jenkinsci/helm-charts/blob/main/charts/jenkins/README.md

kubectl port-forward svc/jenkins 8080:8080

connect to repo and run pipeline
see that each pipeline runs in pod
