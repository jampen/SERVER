# ! Make sure you export AWS_DEFAULT_REGION !
# This script is used for turning on or off our minecraft server

import boto3

# For arguments
import sys


if False:
    command = sys.argv[1]
    if not command in ('start', 'stop'):
        print('invalid argument')
        exit(1)


def list_instances():
    ec2_res = boto3.resource('ec2')
    instances = ec2_res.instances.all()
    instances = [(instance.id, instance.name) for instance in instances]
    return instances

print(list_instances())