#!/bin/bash
aws cloudformation create-stack --stack-name SampleNetworkCrossStack --template-body file://vpc.yaml
