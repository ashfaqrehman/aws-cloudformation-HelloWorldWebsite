#!/usr/bin/env bash

region="us-east-1"
profile="default"

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

aws cloudformation update-stack \
    --stack-name AshfaqRehman-WebApp \
    --template-body file://${dir}/../cloudformation/webapp.yaml \
    --parameters \
        "ParameterKey=NetworkStackName,ParameterValue=AshfaqRehman-VPC" \
        "ParameterKey=KeyName,ParameterValue=OnicaTest" \
        