AWS_CONFIG_ENV=./credencias_docker
docker run --env-file=$AWS_CONFIG_ENV -it -v /mnt/d/FORMACAOAWS/automacao_na_nuvem_usando_awscli/backup:/tmp/backup --rm automacao_na_nuvem_usando_awscli-server:latest
