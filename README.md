# Install the aws cli and create a AWS profile
```
pip install awscli # depending your set up you might need `sudo` permissions
```

## Create an awscli profile
```
aws configure --profile abcaccount
AWS Access Key ID [None]: XXXXXXXXXXXXXXITBBBGQ
AWS Secret Access Key [None]: XXXXXXXXXXXXXXXXXXXXXXkJr73deoGf4
Default region name [None]: us-east-2
Default output format [None]: json
```

# Make a branch for your terraform plan

```
git checkout -b my-tf-plan
mkdir my-tf-plan
cd my-tf-plan
```

# Generate your terraform config files
```
touch main.tf variables.tf outputs.tf common.tfvars
```

```
my-tf-plan
├── common.tfvars # variables values
├── main.tf       # main terraform plan
├── outputs.tf    # terraform outputs
└── variables.tf  # variables declaration and definition
```

# Create an initial plan on `main.tf`

```
provider "aws" {
  profile = "${var.aws_profile}"
  region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-10547475"
  instance_type = "t2.nano"
}
```

# Add the define the `aws_profile` variable
```
variable "aws_profile"{
  default = "abcaccount"
}
```
