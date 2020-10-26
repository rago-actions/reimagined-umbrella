
### Terraform Installation in Windows Machine
```
Open a PowerShell terminal in administrator mode
```
#### Install Choclatey
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
#### Install terraform
````
choco install -y  terraform
````
#### Verify that the installation worked by opening a new terminal session and listing Terraform's available subcommands
```
terraform -help
terraform -help plan
```
#### Enable tab completion
```
terraform -install-autocomplete
```
#### Upgrade terraform using Choclatey
````
choco install -y terraform --version "0.12.28"
````
