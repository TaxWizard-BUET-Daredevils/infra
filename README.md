# infra code for tax wizard
## terraform project structure\
  .
├── `backend`\
│   ├── main.tf\
│   ├── output.tf\
│   ├── terraform.tfstate\
│   └── terraform.tfstate.backup\
├── `ec2`\
│   ├── aws-test.pem\
│   ├── backend.tf\
│   ├── main.tf\
│   ├── outputs.tf\
│   ├── public_key.pub\
│   ├── sonar.tf\
│   └── variables.tf\
├── `ecr`\
│   ├── backend.tf\
│   └── main.tf\
├── `ecs`\
│   ├── alb.tf\
│   ├── asg.tf\
│   ├── backend.tf\
│   ├── data.tf\
│   ├── ec2.tf\
│   ├── ecs.sh\
│   ├── iam.tf\
│   └── main.tf\
├── `rds`\
│   ├── backend.tf\
│   ├── main.tf\
│   ├── outputs.tf\
│   └── variables.tf\
├── `secret-manager`\
│   ├── backend.tf\
│   ├── main.tf\
│   └── output.tf\
└── `vpc`\
|   ├── backend.tf\
|   ├── main.tf\
|   └── output.tf\
├── destroy.sh\