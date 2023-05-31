![ScyllaDB_AWS_Terraform_Module](https://github.com/TechieTeee/ScyllaDB_Terraform_Module_AWS/assets/100870737/7991f5ba-cc15-4d71-bd3d-dfa97a9b9d4a)


# ScyllaDB Terraform Module AWS
- A Module to Create ScyllaDB Instance with AWS EC2 Instance
- Please feel free to use to module to streamline making your infrastructure with Terraform, ScyllaDB and AWS

# Steps to Run Code
1. Make sure you have Terraform installed.
2. Clone the repo, and navigate to the directory from your command line with `git clone https://github.com/TechieTeee/ScyllaDB_Terraform_Module_AWS.git` and then cd into the directory. `cd ScyllaDB_Terraform_Module_AWS`
3. Intialize the Terraform project: `terraform init`
4. Review and validate the configuration. Make sure to change the neccessary details for your environment and replace the placeholder values. `terraform validate`.
5. Plan the infrastructure changes and then save the plan. `terraform plan -out=tfplan`
6. Apply the plan saved from earlier. `terraform apply tfplan`. Once prompted in the command line, answer yes to apply the saved plan.
7. Destroy the resources. If you want to destroy and clean up the resources you just created please use `terraform destroy`.

