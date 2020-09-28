### Steps to follow below commands to execute the terraform configurations

#### Initialize the directory.
```
terrafom init
```

#### format the configuration
```
terraform fmt
```

#### validate the configuration/syntax
```
terraform validate
```

#### create the infrastructure
```
terrafom apply -var 'region=ap-south-1'
```

#### inspect the state
```
terraform show
```

#### List the resources in state
```
terraform state list
```

#### destroy the infrastructure
```
terraform destroy
```
