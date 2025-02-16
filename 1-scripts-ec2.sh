#eferencia https://docs.aws.amazon.com/cli/latest/reference/ec2/
#Scripts Create
aws ec2 run-instances --image-id ami-085ad6ae776d8f09c --instance-type t3.micro  --security-group-ids sg-03f92691d6bd2ef43 --subnet-id subnet-0c14bd5ab1c639559 --region us-east-1 --count 1 --tag-specifications 'ResourceType=instance,Tags=[{Key=grupo,Value=automacao-cli}]'

#Scripts Describe 

aws ec2 describe-instances --filters "Name=tag:grupo,Values=automacao-cli" --query "Reservations[*].Instances[*].[InstanceId,ImageId,Tags[?Key=='grupo'].Value]" --output table --region us-east-1


aws ec2 describe-instances --filters "Name=tag:grupo,Values=automacao-cli" --query "Reservations[*].Instances[*].{PublicIpAddress:PublicIpAddress,InstanceId:InstanceId,InstanceType:InstanceType,State:State.Name}" --output table --region us-east-1

#Stop Instance

aws ec2 stop-instances --instance-ids "i-0ac8cc6f26ad14f6e" "i-053aabf3d54b8b393" --region us-east-1  --output table

#Start Instance

aws ec2 start-instances --instance-ids "i-0ac8cc6f26ad14f6e" "i-053aabf3d54b8b393" --region us-east-1  --output table

#Scripts Delete
aws ec2 terminate-instances --instance-ids  "i-0ac8cc6f26ad14f6e" "i-053aabf3d54b8b393"    --region us-east-1