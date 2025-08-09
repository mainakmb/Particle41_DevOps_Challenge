# Particle41_DevOps_Challenge

## /app directory
This directory where python code and docker file is present, to create docker image, you need to simply run `docker build -t timeflaskapp .` and then retag according to your repository.

## /terraform directory
#### Prerequisites: AWS CLI credentials should be present
This directory terraform scripts are present, I have added VPC, ECS, Loadbalancer resources, also added my own repository docker image as ECS task definition, which you can modify and use your own. You need to change remote backend configuration in `providers.tf`

`terraform init` -> `terraform plan` -> `terraform apply -auto-approve`

