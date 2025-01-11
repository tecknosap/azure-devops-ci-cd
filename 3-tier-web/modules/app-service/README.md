Deployment Process Summary
Step 1: Build and Configure Terraform Deployment Files
Terraform Configuration:

Define resources for App Service Plan and App Service:
App Service Plan: Hosting environment.
App Service: Deploys the web application.
Use Terraform variables for reusability.
Example resources:

azurerm_app_service_plan for the hosting environment.
azurerm_app_service for the web app configuration.
Variables File:

Define variables for names, locations, and connection strings for easy customization.
Deploy Infrastructure:

Initialize Terraform: terraform init
Apply configuration: terraform apply
Verify resources in Azure.
Step 2: Set Up Local Git
Initialize Git:

Run git init in your project folder.
Add files and commit:
bash
Copy code
git add .
git commit -m "Initial commit"
Attach Git Repository to Azure:

In Azure Portal, navigate to the deployed App Service > Deployment Center > Local Git.
Copy the Git URL and add it as a remote:
bash
Copy code
git remote add azure https://teckno-app-service-b85f0d4f.scm.azurewebsites.net:443/teckno-app-service-b85f0d4f.git
Step 3: Push Code and Deploy
Push Code:

Push code to Azure:
bash
Copy code
git push azure master
Verify Deployment:

Visit the App Service URL:
https://<app_service_name>.azurewebsites.net
Result
Infrastructure deployed with Terraform.
Local Git integrated with Azure App Service.
Website is live and accessible.
This process is efficient, repeatable, and ensures proper deployment of web applications to Azure.






