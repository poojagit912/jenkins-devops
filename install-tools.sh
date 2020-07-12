#--------------------------Install node--------------------------------
curl -sL https://deb.nodesource.com/setup_13.x | bash -
apt-get install -y nodejs
apt-get install -y npm

#--------------------------Install Docker-------------------------------

apt-get update -y
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update -y

apt-get install  -y docker-ce docker-ce-cli containerd.io


#-----------------Install kubernetes------------------------------------
apt-get update &&  apt-get install -y apt-transport-https gnupg2

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" |  tee -a /etc/apt/sources.list.d/kubernetes.list

apt-get update -y
apt-get install -y kubectl

#--------------------Install terraform---------------------

wget https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_linux_amd64.zip

unzip terraform*.zip

mv terraform /usr/local/bin

terraform version


