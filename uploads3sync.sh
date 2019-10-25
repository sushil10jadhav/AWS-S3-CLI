#!/bin/bash
#Create a bucket
aws s3 mb s3://mysourcebucket19072020skj.com
#Create a bucket 
aws s3 mb s3://mysourcebucket19072020dsj.com

#Sync first bucket
aws s3 sync . s3://mysourcebucket19072020skj.com

#Below coommand will sync two buckets
aws s3 sync s3://mysourcebucket19072020skj.com s3://mysourcebucket19072020dsj.com --delete --exclude "*.sh"

#Below command will delete a file from bucket if its deleted from the source folder.
aws s3 sync . s3://mysourcebucket19072020skj.com --delete --exclude "*.sh"

#syn between bucket and local dir ->
aws s3 sync s3://sourcebucketoct23  .

#sync these two buckets -->
aws s3 sync s3://sourcebucketoct23 s3://targetbucketoct23

#remove buickets , force is used to delete all objects in the bucket
aws s3 rb s3://sourcebucketoct23 --force
aws s3 rb s3://targetbucketoct23 --force

#Create Website -->
aws s3 website s3://sourcesushil1025/ --index-document index.html --error-document error.html

# Remove all objects from bucket 
$ aws s3 rm s3://sourcesushil1025  --recursive 
$ aws s3 rm s3://targetsushil1025  --recursive 

# Remove bucket
$ aws s3 rb s3://targetsushil1025 
$ aws s3 rb s3://sourcesushil1025  
