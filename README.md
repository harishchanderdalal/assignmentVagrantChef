# assignmentVagrantChef
Vargrant Chef

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
vagrant and aws plugin to install

vagrant Install
```
1. https://www.vagrantup.com/downloads.html
2. vagrant plugin aws
```

Vagrantfile variables
---------------------------------
Vagrant file variable that need to update before vagrant up.

|    Variable name          |    Description                              |
| :------------------------ | -----------------------------------------   |
|  `aws.access_key_id` | AWS Account access key Example = 123243sdaft34tasf3 |
| `aws.secret_access_key` | AWS Account Secret key Example = 12232432asfesdf23423qewsf2332413sdf |
| `aws.keypair_name` | AWS Account Keypair Name Example = vagrant |
| `aws.instance_type` | AWS Instance Type Example = t2.medium |
| `aws.region` | AWS Region Name Example = ap-useast-1 |
| `aws.ami` | AWS AMI ID Example = ami-099fe766 |
