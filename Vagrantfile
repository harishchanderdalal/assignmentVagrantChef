Vagrant.configure('2') do |config|
    config.vm.box = 'dummy'
    config.vm.provider 'aws' do |aws, override|
    aws.access_key_id = "XXXXXXXXX"
    aws.secret_access_key = "XXXXXXXXX"
    aws.region = 'us-east-1'
    aws.ami = 'ami-099fe766'    
    aws.instance_type = 't2.medium'
    aws.security_groups = 'agility'
    aws.keypair_name = 'agility'
    aws.block_device_mapping = [{ 'DeviceName' => '/dev/sda1', 'Ebs.VolumeSize' => 50 }]
    aws.tags = {
        'Name' => 'Jenkins',
        'Owner' => 'agility'
    }
    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = '~/vagrant.pem'
  end
   config.vm.provision :shell, :path => "jenkinsInstall.sh"
end
