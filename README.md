# **3-Tier Web Application in Azure**

## **Architecture Overview**

This project sets up a **3-Tier Web Application** architecture in **Microsoft Azure** using **Terraform**. The three layers in this architecture are:

1. **Presentation Tier (Frontend)**: A **.NET web application** hosted on **Azure App Service**, serving the front-end to users.
2. **Application Tier (Backend)**: The .NET application interacts with the **SQL Database** and other business logic. Application configuration and diagnostics are handled by **Azure Application Insights**.
3. **Data Tier**: A **SQL Database** hosted in **Azure SQL Database**, with sensitive information (such as credentials) stored securely in **Azure Key Vault**.

All components are provisioned and managed using **Terraform** to ensure scalability, repeatability, and ease of maintenance.

## **Key Features**

- **3-Tier Architecture**: Clearly separated presentation, application, and data layers.
- **Azure App Service**: Hosts the web application in a fully managed environment with built-in scaling capabilities.
- **Azure SQL Database**: A fully managed relational database for storing application data, with auto-scaling and backup options.
- **Application Insights**: Provides monitoring and diagnostics, tracking application performance and health in real time.
- **Azure Key Vault**: Securely stores sensitive information such as SQL Database connection strings and admin credentials.
- **Log Analytics**: Centralized logging and metrics aggregation for troubleshooting and analysis.
- **Terraform Automation**: All resources are provisioned and configured using Terraform, enabling automated and consistent deployment.

## **Prerequisites**

Before deploying this solution, ensure you have the following:

- **Azure Subscription**: A valid Azure account with permissions to create resources.
- **Terraform Installed**: Terraform installed and configured to work with your Azure subscription.
- **Resource Group**: A resource group that either already exists or will be created during deployment.
- **Admin Credentials**: SQL Server admin username and password for database configuration.
- **Azure CLI (Optional)**: Azure CLI can be used for additional manual configurations, if needed.

## **Deployment Steps**

Follow these steps to deploy the solution:

1. **Clone the Repository**: Clone this repository to your local machine.
   
2. **Configure Variables**: Update the `variables.tf` file with the required values, including the resource group name, SQL server credentials, Application Insights name, and others.

3. **Initialize Terraform**: Run the following command to initialize the Terraform working directory:

   terraform init
Preview the Deployment: Run the terraform plan command to preview the resources that will be created:

terraform plan
Deploy the Resources: Apply the Terraform configuration to provision the infrastructure:

terraform apply
Monitor the Resources: After deployment, go to the Azure portal to view the App Service, SQL Database, Application Insights, and Key Vault resources.

Access the Application: Once deployed, access the web application hosted on Azure App Service through the provided URL.

Security Considerations
Secure Secret Management: All sensitive data, including database credentials, are securely stored in Azure Key Vault and accessed by the application at runtime.
Role-Based Access Control (RBAC): Key Vault access policies restrict access to secrets to authorized users and services only.
Data Encryption: Azure SQL Database and Key Vault both support encryption at rest and in transit.
Purge Protection: Key Vault is configured with purge protection to prevent the accidental deletion of sensitive secrets.

#### Architecture Diagram
The architecture includes the following components:

Presentation Tier: The web application hosted on Azure App Service which serves the front-end to users. It is linked to Application Insights for monitoring.
Application Tier: The application tier is represented by the backend application that connects to the SQL Database and utilizes Key Vault for securely managing credentials.
Data Tier: The Azure SQL Database is the backend storage for application data.
Monitoring & Logging: Application Insights monitors application performance, while Azure Log Analytics provides aggregated logs and metrics.
Security: Azure Key Vault stores sensitive credentials, such as SQL Database login information.
[![image](https://github.com/user-attachments/assets/416d3848-4c92-4042-9c43-6be66bfb5fe7)
]


Deploying the Application to Azure App Service Using Git

#### Set up Git Remote:

git remote add azure https://<username>@<app-service-name>.scm.azurewebsites.net:443/<app-service-name>.git

Initialize Git Repository:

git init
git add .
git commit -m "Initial Commit"

Push to Azure App Service:

git push azure master

#### Authenticate:

- Go to the Azure Portal and navigate to your App Service.
- Under Deployment Center, select Local Git/FTPS credentials.
- Use the Local Git Username and Password for authentication.
- 
#### Verify Deployment:

Open the Console under Development Tools in the Azure portal.
Type ls to see your files in C:\home\site\wwwroot\.

#### Access the Website:

Your site is live and can be accessed at:

https://<app-service-name>.azurewebsites.net/

<img src="https://github.com/user-attachments/assets/0b8a179b-4197-4af9-82ca-6be50bbfddb0" alt="image" style="width: 500px; height: 300px; margin: 20px;">



Now you can customize the website from VS Code and push changes to Azure.

# Conclusion
This project provides an automated, scalable, and secure solution for hosting a 3-Tier Web Application on Microsoft Azure. The separation of concerns across the three tiers (presentation, application, data) enables flexibility and scalability. The use of Terraform ensures that infrastructure is deployed in a repeatable and maintainable way, while Azure Key Vault, SQL Database, Application Insights, and Log Analytics provide essential security and monitoring features.

# License
This project is licensed under the MIT License.

# Customization
You can customize this project by modifying the following:

App Service Plan: Modify the App Service Plan to scale the app to different pricing tiers (e.g., Standard, Premium) or operating systems (e.g., Linux, Windows).
Database Settings: Adjust the SQL Database configuration, including size, performance tier, and backup options.
Application Insights: Configure Application Insights to monitor specific metrics, or integrate with external monitoring services.
Key Vault Configuration: Modify the Key Vault access policies to control which users and services can access secrets and keys.

Feel free to modify the configuration to suit your specific requirements, such as changing the VM size, region, or network configuration.

Happy Terraforming! 🚀
