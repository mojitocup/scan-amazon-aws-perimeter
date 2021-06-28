# scan-amazon-aws-perimeter

Prereq:
NMAP
AWS CLI
AWS CONFIGURE

1. Install NMAP
Ubuntu: sudo apt-get update && sudo install nmap
AMI: sudo yum update && sudo yum install nmap -y

2. Intall AWS CLI (No need for AMI, Just ubuntu:
sudo apt-get install awscli

3. Configure AWS with your credentials:
aws configure

4. Run bash script or inline command:
aws ec2 describe-addresses | grep '"PublicIp":' | cut -d ':' -f 2 | sed 's/"//g' | sed 's/,//g' | xargs nmap
