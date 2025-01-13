<<<<<<< HEAD
# **3-Tier Web Application on Azure with Terraform**

## **Overview**

This project demonstrates a **3-Tier Web Application** deployed on **Microsoft Azure** using **Terraform** for Infrastructure as Code (IaC). The architecture is designed for scalability, security, and high availability, adhering to industry best practices.

### **Architecture Layers:**

1. **Presentation Tier (Frontend):** A **.NET web application** hosted on **Azure App Service** to serve the user interface.
2. **Application Tier (Backend):** Implements business logic, interacts with the SQL Database, and manages secure configurations via **Azure Key Vault**.
3. **Data Tier:** A **SQL Database** hosted in **Azure SQL Database**, providing reliable and scalable data storage.

The deployment uses **Terraform** to ensure consistency, repeatability, and ease of management, while **Application Insights** and **Log Analytics** provide monitoring and diagnostics.

---

## **Key Features**

- **3-Tier Architecture:** Separation of concerns across presentation, application, and data layers.
- **Terraform Automation:** Ensures consistent, automated deployment of infrastructure.
- **Azure App Service:** Managed hosting with scalability for frontend and backend services.
- **Azure SQL Database:** Secure and scalable relational database for application data.
- **Azure Key Vault:** Centralized, secure storage for sensitive information like credentials.
- **Monitoring & Diagnostics:**
  - **Application Insights:** Real-time application performance monitoring.
  - **Log Analytics:** Aggregated logs and metrics for troubleshooting.
- **Role-Based Access Control (RBAC):** Fine-grained access control for secure operations.

---

## **Tech Stack**

- **Frontend:** .NET Web Application  
- **Backend:** .NET Framework  
- **Database:** Azure SQL Database  
- **Infrastructure:** Terraform  
- **Cloud Platform:** Microsoft Azure  
- **Monitoring & Logging:** Application Insights, Log Analytics  

---

## **Technology Used**

### **Programming & Frameworks**
- **.NET Framework:** For building the frontend and backend application.
- **Terraform:** Infrastructure as Code for automating resource provisioning.

### **Cloud Services**

- **Azure App Service:** Web hosting for frontend and backend.
- **Azure SQL Database:** Managed relational database.
- **Azure Key Vault:** Secure management of sensitive data.
- **Application Insights:** Performance monitoring and diagnostics.
- **Log Analytics:** Centralized log aggregation and analysis.

### **DevOps Tools**

- **Git:** Version control for source code management.
- **Azure CLI:** Command-line tool for managing Azure resources.
- **GitHub:** Repository for versioning and collaboration.

---

## **Prerequisites**

Before you start, ensure you have the following:

1. **Azure Subscription:** An active Azure account with permissions to create resources.
2. **Terraform Installed:** [Download Terraform](https://www.terraform.io/downloads.html).
3. **Azure CLI Installed:** [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).
4. **Git Installed:** [Download Git](https://git-scm.com/).
5. **SQL Admin Credentials:** SQL Database admin username and password.
6. **Resource Group:** A pre-existing resource group or specify one to be created during deployment.

---

## **Deployment Steps**

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/3-tier-web-app.git  
   cd 3-tier-web-app 

Configure Terraform Variables Update the variables.tf file with:

Azure region.
Resource group name.
SQL database credentials.
App Service plan details.
Application Insights and Key Vault names.

Initialize Terraform Run the following command to initialize Terraform in your project directory:

terraform init

Preview the Resources Generate and review the execution plan:

terraform plan  

Deploy the Infrastructure Provision the resources in Azure:

terraform apply  

Verify the Deployment

Access the App Service URL to verify the application is running.
Check Application Insights for live metrics and performance data.
Inspect logs in Log Analytics for troubleshooting.
Architecture Diagram
Key Components
Azure App Service: Hosts the frontend and backend web applications.
Azure SQL Database: Securely stores relational data.
Azure Key Vault: Centralized management for credentials and secrets.
Application Insights: Provides performance and usage metrics.
Log Analytics: Aggregates and visualizes logs for observability.
Include your architecture diagram image here.

# Conclusion
This project showcases an industry-standard, 3-Tier Web Application architecture on Microsoft Azure, emphasizing:

Scalability: Leveraging Azure services and Terraform automation.
Security: Through Azure Key Vault and RBAC.
Observability: With integrated monitoring and logging tools.
Using Terraform, the deployment process is fully automated, ensuring repeatability and ease of maintenance. This approach is ideal for modern, cloud-native applications, making it an excellent example of a professional-grade solution.

License
This project is licensed under the MIT License. See the LICENSE file for details.

#### Contributing
Contributions are welcome! Follow these steps:

Fork the Repository
Create a New Branch:

git checkout -b feature-branch  
Commit Your Changes:

git commit -m 'Add new feature'  
Push to Your Fork:

git push origin feature-branch  
Submit a Pull Request
Your ideas and improvements are greatly appreciated!
=======
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
>>>>>>> 4a071abfaeb1678acececd68269c38d9f738f360

Feel free to modify the configuration to suit your specific requirements, such as changing the VM size, region, or network configuration.

Happy Terraforming! 🚀
<<<<<<< HEAD

Copy code





=======
>>>>>>> 4a071abfaeb1678acececd68269c38d9f738f360
