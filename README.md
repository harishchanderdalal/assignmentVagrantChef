# Vagrant Launch Ec2 WithJenkins

## Getting Started
This will launch Ec2 with Jenkins During Launch. you can launch Ec2 from your Local Machine Env.

### Prerequisites
vagrant and aws plugin have to install in you local.

vagrant Install
```
1. https://www.vagrantup.com/downloads.html
2. vagrant plugin aws
```

Vagrantfile variables that need to update as per need.

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
| `override.ssh.private_key_path` | AWS Account KeyPair Pem Path `Example = ~/home/vagrantChef/vagrant.pem` |

### How to Launch Ec2
CMD to Launch Ec2, This will install jenkins while BOOT
```
- vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
- vagrant up --provider=aws
```

### Jenkins Setup First Time

URL - Machine Ip:8080
- Key for unlock you jenkins, Login to Jenkins Machine and Get Key with below CMD
```
cat /var/lib/jenkins/secrets/initialAdminPassword
```
- Use Default Plugins and then Create New admin User
![jenkins plugins](https://user-images.githubusercontent.com/22466745/29718188-7739c2a4-89cf-11e7-8e27-227ef3883cf2.png)
