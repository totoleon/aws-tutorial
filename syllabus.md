# AWS associate level training
This course provides associate level training for Amazon Web Service.

The target audiences are IT students, professionals who want to learn Cloud technology.

The course aims helping candidates to get started with AWS with hands on experience. By the end of the course, candidates are supposed to:
- Better understand of IT in general
- Identifying basics of AWS and cloud concepts
- Describe core AWS services with practical experience
- Knowing most of AWS services on the domain map
- Name some of the fundamental cloud concepts and best practise
- Pass AWS Certified Cloud Practitioner/Associate level exam
- Be exposed to more job opportunities

### Syllabus
---
#### 1. Introduction and get started
- Introduction to the course
  - Who am I
  - What are we going to learn
  - Why learning this and what are the expected outcomes
  
- General IT - web technology recap
  - How does website work
    - What happend when you type www.amazon.com
    - What technologies can you name in this flow
  - Evolution of IT abstraction
    - Traditional computing resource
    - Hypervisor and private cloud
    - Public Cloud
    - Containers
  
- Cloud and AWS
  - What is cloud computing and where does it come from
  - Why cloud is becomming the new normal
    - Scalability, realiability, security etc
  - Generally map AWS services to traditional IT
    - EC2 (Virtual host)
    - S3 (Object level storage)
    - Route53 (Managed DNS)
    - ELB (Managed load balancer)
    - CloudFront (Manged CDN)
    - etc
  - AWS Global infrastructure and edge location
  - AWS pricing and support
    - Free tier
    - Unique pricing scheme per service

- Cloud in IT industury 
  - Job opportunities related to cloud
    - DevOps
    - Cloud Architects
    - Full stack developers
  - Other cloud providers
    - Azure, GCP, Ali Cloud
  - AWS certificates
    - The ladder structure
    - Cloud Practioner
    - Associate level - SA, SysAdmin, Developer
    - Professional level - SA, DevOps
    - Specialty - Networking, Security, BigData

- Getting hands dirty
  - ```Create Personal AWS account```
  - ```Setup MFA and budget alerts```
  - ```Create your user in IAM user```

- Setting up the dev env
  - Editor - sublime text
  - Terminal Mac/Ubuntu or Window MobaXterm
  - Python
  - AWS CLI

- Additional learning material
  - Acloud guru
  - LinuxAcademy
  - https://github.com/qyjohn/web-demo

- **IT fundamentals*
  - Network - TCP/IP, CIDR, HTTP/S, DNS, SSH/RDP, Firewall, load balancers, ACLs
  - System - Amazon Linux, Ubuntu, CentOS, RHEL, Windows
  - CLI - basic shell commands, ssh, putty for windows
  - Web - Client-Server, 3-tiers structure, static and dynamic, programming language, API

---
#### 2 & 3. AWS core services
- IAM
  - User and groups
  - Roles and cross account access
  - Policies
  - Credentials for CLI
  - Service roles
  - ```CURD of IAM users/roles/groups```

- EC2
  - Instance types, EBS volumes
  - Linux/Windows
  - ```Launch an instance and login to my server```
  
- VPC
  - Subnets and ACLs
  - Security Groups
  - Routing
  - IGW and best practise
  - ```Create public and private subnets```

- S3 & Glacier
  - Create AWS account
  - Setup MFA and budget alerts
  - Create your user in IAM user
  - ```Create your S3 bucket```
  - **```Hosting static website on S3```*

- RDS
  - Understand how RDS works
  - Different types of databse engines

- ELB and AutoScaling
  - Understand how RDS works

- Route 53
  - Domain purchase
  - Hosted zones

- Applications
  - SQS
  - SNS

- Tags
  - Manage your resources by tags

- Other important services by functionality
  - Lambda
  - DynamoDB
  - CloudTrail
  - CloudWatch

---
#### 4 & 5. Practise makes better
- Deploy web app 1.0 LAMP on standalone Linux instance
  - ```EC2```
  - ```VPC```
- Cloud Design pricipals and why standalone server is bad
  - Design for failures
  - Loose coupling
  - Elasticity
  - Security
  - Pets and cattles
  - Choose the right service
- Web app 2.0
  - ```IAM```
  - ```S3```
  - ```RDS```
- Web app 3.0
  - ```ElastiCache```
  - ```ELB```
  - ```AutoScaling```
- Comparsion and conclusion

---
#### 6. Automation, Deployment, Infrastructure as Code
- CloudFormation
  - ```Launch our web app using CloudFormation```
- Beanstalk
  - ```Quickly deploy an app using BS```
- Why IaC
  - Software deployment cycle - dev->staging->prod
  - Blue/Green
  - Pipeline
- CLI with CFN
- **Other tools - Ansible/Terraform*

---
#### 7 & 8. Trendy technologies on AWS and serverless hands on
- Serverless
  - Lambda
  - API Gateway
  - DynamoDB
- Container
  - Docker 
  - K8S
  - ECS
  - Fargate
- **ML and Bigdata*
  - Sagemaker
  - AWS ML
  - Rekognition
  - Amazon Comprehend
- ```Serverless API + S3 static content```
- ```Serverless chat room```

---
#### 9. Preparing for the exam
- Billing model and account managements
- Shared responsibility
- Security best practise
- HA best practise
- Review the topics covered in the exams
- Exam tips
- Cloud Practioner
- Solution Architect associate

---
#### 10. Job hunting focused
- Cloud Practioner Mock tests
- AWS positions and leader ship principals
- STAR interview questions
- Cloud related jobs and what they take
- How to continue self study
- QnA
