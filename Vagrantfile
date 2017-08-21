Vagrant.configure('2') do |config|
    config.vm.box = 'dummy'
    config.vm.provider 'aws' do |aws, override|
    aws.access_key_id = "XXXXXXXXX"
    aws.secret_access_key = "XXXXXXXXX"
    aws.keypair_name = 'keypairname'
    aws.instance_type = 'instancetype'
    aws.region = 'region'
    aws.ami = 'ami-id'
    aws.security_groups = 'securityGroupName'
    aws.tags = {
        'Name' => 'tag',
        'Owner' => 'owner'
    }
    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = 'keypair.pem'
  end
   config.vm.provision :shell, :path => "jenkinsInstall.sh"
end
