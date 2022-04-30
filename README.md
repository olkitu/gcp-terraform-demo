# GCP Terraform Demo

This is just my own demo to deploy basics to GCP. Not for production use. All project stuff will be deployed to us-west-1 region.

* VPC
* Cloud SQL

## Deploy

Login to GCP

```
gcloud auth application-default login
```

Set project ID as environment variable.

```
export GOOGLE_PROJECT=<ProjectID>
```

Run `terraform init` to install all required modules

```
terraform init
```

Check current configuration before apply

```
terraform plan
```

Apply changes

```
terraform apply
```