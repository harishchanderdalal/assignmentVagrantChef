# VagrantChef
Vargrant Chef
- vagrant install 
- vagrant aws plugin
- vagrant install ec2 with jenkins
- jenkins pipline build spring

- chef server


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
|  `aws.access_key_id` | AWS Account access key `Example = 123243sdaft34tasf3` |
| `aws.secret_access_key` | AWS Account Secret key `Example = 12232432asfesdf23423qewsf2332413sdf` |
| `aws.keypair_name` | AWS Account Keypair Name `Example = vagrant` |
| `aws.instance_type` | AWS Instance Type `Example = t2.medium` |
| `aws.region` | AWS Region Name `Example = ap-useast-1` |
| `aws.ami` | AWS AMI ID `Example = ami-099fe766` |
| `aws.security_groups` | AWS Account Security Group `Example = Default` |
| `aws.tags` | Tag as per need `Example = Foo Bar` |
| `override.ssh.username` | AWS Ec2 Machine login Useraname `Example = ubuntu` |
| `override.ssh.private_key_path` | AWS Account KeyPair Pem Path `Example = ~/home/vagrant.pem` |

### Vagrant up

Launch Ec2
```
- vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
- vagrant up --provider=aws
```

### Jenkins Setup

Ec2 Ip:8080
- Cat file and Add key
- install default plugin
- create user to login

```
cat /var/lib/jenkins/secrets/initialAdminPassword
```
