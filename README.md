# scan-amazon-aws-perimeter

Prereq:
NMAP
AWS CLI
AWS CONFIGURE

1. Install NMAP
Ubuntu: sudo apt-get update && sudo install nmap <br/>
AMI: sudo yum update && sudo yum install nmap -y<br/><br/>

2. Intall AWS CLI (No need for AMI, Just ubuntu:<br/>
sudo apt-get install awscli<br/><br/>

3. Configure AWS with your credentials:<br/>
aws configure<br/><br/>

4. Run bash script or inline command:<br/>
aws ec2 describe-addresses | grep '"PublicIp":' | cut -d ':' -f 2 | sed 's/"//g' | sed 's/,//g' | xargs nmap
