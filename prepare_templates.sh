#!/usr/bin/env bash

if [[ $# -ge 1 ]]; then
  echo "The bucket specified is: $1"
  echo "Starting copy of all nested templates to bucket to s3://$1"
  aws s3 cp infrastructure/ s3://$1 --recursive  
else 
  echo "Usind default bucket: nested-templates-wip"
  echo "Starting copy of all nested templates to bucket to s3://nested-templates-wip"
  aws s3 cp infrastructure/ s3://nested-templates-wip --recursive  
fi


