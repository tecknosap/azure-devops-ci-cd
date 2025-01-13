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

Feel free to modify the configuration to suit your specific requirements, such as changing the VM size, region, or network configuration.

Happy Terraforming! 🚀

Copy code





