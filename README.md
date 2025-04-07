This is sample terraform code for EKS cluster provision. No actual deployment is done 
=====================================================================================
Git version control repository path: https://github.com/vceta/eks-sample.git

Maintainer: Sample User, department X, UK, sample@company.co.uk
Reviewer: department y, reviewer@company.co.uk


- Please note this is sample code and no actual deployment hs been done.
- The code is not tested and is for demonstration purpose purposes only.
- The code is not production ready and should not be used in production environment.
- Please nore there is now AWS Pricing calculator or etc. 
- 
What included in this infra deployment:
* EKS cluster provision in private subnet
* VPC provision, subnets
* Karpenter provision for autoscale
* ArgoCD provision for CI/CD and Helm chart deployment (Spark and etc) and metrics server
* Please note that ALB will be mapped to NLB target as Istio Gateway expose ingress via NLB
* Istio provision via Helm chart during Argo CD deployment

Prerequisites:
==============
* Terraform installed with version 1.X
* Connection for modules fetching, we will use public available modules
* AWS account with IAM user with access key and secret key, strongly recommended to use IAM role 
* AWS CLI installed and configured with the above IAM user for debugging purpose

How to apply code:
-------------
* <b>terraform init</b> Init terraform. 
* <i>cd bootstrap; terraform apply<i/>Please note this is sample code, at real infrastructure you need to bootstrap S3 ahd DynamoDB for state management
* <b>terraform plan -out=<planfilename></b>
* <b>terraform apply <planfilename> -var-file=”vars/prod/values.tfvars”</b> (--auto-approve for automated pipeline ). Use values for dev/prod environments

How to apply changes:
-------------
* <b>terraform</b> validate to ensure the configuration is valid
* <b>terraform fmt</b> format you terraform code
