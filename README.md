# A. Create an EC2 Debian Wheeze AMI

***

Login to AWS, launch an instance and SSH into it.
If necessary "sudo -i" to become root and run the following:

    apt-get install -y git
    cd /root
    git clone https://github.com/andsens/build-debian-cloud.git
    export EC2_ACCESS_KEY='your_aws_access_key'
    export EC2_SECRET_KEY='your_aws_secret'
    cd /root/build-debian-cloud
    ./build-debian-cloud ec2 --volume-size 1 --filesystem xfs  --codename wheezy --description 'Debian Wheezy 64'


More information at [here](http://wiki.debian.org/Cloud/AmazonEC2Image/Wheezy#A7.0.0).

# B. Install BOA Hosting Platform
***

Launch an instance of the Debian Wheezy AMI with an associated elastic IP and expand the disk with:

    apt-get install -y xfsprogs
    xfs_growfs /

Get and configure BOA:

    wget -q -U iCab http://files.aegir.cc/BOA.sh.txt
    bash BOA.sh.txt
    boa in-stable public server.yourdomain.com your@email.com o1 mini
    sed -i 's/^_MY_OWNIP.*/_MY_OWNIP="associated_elastic_ip"/' /root/.barracuda.cnf
    sed -i 's/ FTP"/"/g' /root/.barracuda.cnf

Configure keys and git:

    cp /root/.ssh/authorized_keys /home/o1.ftp/.ssh/
    chown -R o1.ftp:users /home/o1.ftp/.ssh
    git config --global user.name "your_name"
    git config --global user.mail your@email.com
    /usr/bin/dircolors
