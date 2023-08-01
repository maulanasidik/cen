#! /bin/bash
yum install yum-utils wget curl nano htop -y

# remove git
yum remove git git-* *-git -y

# git latest
yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
yum install git -y


cd
cd /etc/yum.repos.d/
wget -O /etc/yum.repos.d/shells:fish:release:3.repo --no-check-certificate https://download.opensuse.org/repositories/shells:fish:release:3/CentOS_7/shells:fish:release:3.repo
yum install fish -y 
# oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# default install /usr/bin/fish
# https://techviewleo.com/configure-fish-shell-with-oh-my-fish/
cd

#2 line theme commmadn fish 
omf install ays

chsh -s $(which fish)
# or chsh -s /usr/local/bin/fish

systemctl restart sshd
timedatectl set-timezone Asia/Jakarta
