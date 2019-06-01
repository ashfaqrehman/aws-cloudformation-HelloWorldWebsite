#!/usr/bin/env bash

region="us-east-1"
profile="default"

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

aws cloudformation create-stack \
    --stack-name AshfaqRehman-VPC \
    --template-body file://${dir}/../cloudformation/vpc.yaml \
    --parameters \
        "ParameterKey=EnvironmentName,ParameterValue=VPC_2AZs"