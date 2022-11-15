## Mini terraform project using the aws provider

### Features

- Deploy an EC2 instance and associate it an ip elastic, a volume.
- Install NGINX on the EC2 instance and record the ip address of the instance in a text file.
- Make the code reusable and customizable (with modules and variables)

### Requirements
- Terraform CLI installed
- [AWS account](https://aws.amazon.com/fr) and [access key](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-about) that allow you to create resources
- Set the **AWS_ACCESS_KEY_ID** and **AWS_SECRET_ACCESS_KEY**  environment variable
`$  export AWS_ACCESS_KEY_ID=`
`$  export AWS_SECRET_ACCESS_KEY =`