#!/bin/bash
aws cloudformation create-stack --stack-name WebServer1 --template-body file://ec2.json
