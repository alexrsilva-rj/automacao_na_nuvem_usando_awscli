#referencia https://docs.aws.amazon.com/cli/latest/reference/s3/


#Script Create S3
$1 = curso-automacao-s3
aws s3api create-bucket --bucket $1 --region us-east-1

#Script List S3
aws s3 ls

aws s3 ls s3://curso-automacao-s3
aws s3 ls s3://curso-automacao-s3 --recursive --human-readable --summarize

#Script Upload File
aws s3 cp $2 s3://$1/$3

#Script Download File
aws s3 cp s3://$1/$3 $4


#Presigned URL
aws s3 presign s3://$1/$3 --expires-in 3600
aws s3 presign s3://$1/$3 --expires-in 3600 --http-method GET

aws s3 presign s3://curso-automacao-s3/arquivo.txt --expires-in 3600

#Copy S3
aws s3 cp /tmp/backup/arquivo.txt s3://curso-automacao-s3/arquivo.txt 
aws s3 cp s3://curso-automacao-s3/arquivo.txt s3://curso-automacao-s3/arquivo3.txt --acl public-read

#Sync S3
aws s3 sync /tmp/backup s3://curso-automacao-s3
aws s3 sync s3://curso-automacao-s3 /tmp/backup
aws s3 sync s3://curso-automacao-s3 /tmp/backup --delete

#Delete S3
aws s3 rm s3://curso-automacao-s3/arquivo.txt
aws s3 rm s3://curso-automacao-s3 --recursive
aws s3 rb s3://curso-automacao-s3
#Script Delete Bucket
aws s3 rb s3://curso-automacao-s3 --force
