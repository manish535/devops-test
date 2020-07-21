Requirement: Python3, boto3, ansible, docker, git, aws IAM user
1. Deploy a Jenknis server and create pipeline job.
  Tool(Configure):
    git
    ansible
    docker
  Credential:
    git credential
    AWS credential with with access keys
  Plugin:
    AWS ECR
    docker
    ansible
    pipeline
    git
    etc...
  Job configure:
    Provide git URL
    Check pull from git
    Configure pipeline section from git and provide file name as Jenkinsfile.
    
2. Create an AWS IAM user with access to load balancer, ECS and ECR service. Generate access keys and replace in ansible roles.
3. Configure webhook from git with specific branch of repository. Push data and job will start.

NOTE: At this point of time ansible roles are not secure. Requests you to deactivate the AWS access keys after testing.
