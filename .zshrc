ec2() {ssh -i ~/us-east-1.pem ec2-user@"$1";}
r123() {rsync -e 'ssh -i "~/us-east-1.pem"' ec2-user@$1:$2 $3}
r213() {rsync -e 'ssh -i "~/us-east-1.pem"' $2 ec2-user@$1:$3}

