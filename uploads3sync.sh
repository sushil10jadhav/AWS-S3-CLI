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
