# AWS Resource Usage Tracker

A beginner-level Bash shell scripting project that uses the AWS CLI to track AWS resource information.

## AWS Services Used

* Amazon S3 – Lists S3 buckets
* Amazon EC2 – Lists EC2 instance IDs
* AWS Lambda – Lists Lambda functions
* AWS IAM – Lists IAM users

## Technologies Used

* Bash
* AWS CLI
* Linux
* jq
* Amazon EC2

## How It Works

The script uses AWS CLI commands to retrieve information about AWS resources.

```bash
aws s3 ls
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
aws lambda list-functions
aws iam list-users
```

`jq` is used to extract EC2 Instance IDs from the JSON response.

## How to Run

Make the script executable:

```bash
chmod +x resourcetracker.sh
```

Run the script:

```bash
./resourcetracker.sh
```

## What I Learned

* Bash shell scripting
* AWS CLI commands
* Working with AWS resources from Linux
* JSON processing using jq
* Basic Git and GitHub workflow
* Working with an AWS EC2 Linux environment

## Future Improvements

* Add error handling
* Add resource counts
* Add timestamps
* Save output to log files
* Add more AWS services

