# 3-Tier Web Application on Azure with Terraform

## Overview

This project demonstrates the deployment of a **3-Tier Web Application** on **Microsoft Azure**, utilizing **Terraform** for automated infrastructure provisioning. The architecture is designed for **scalability**, **security**, and **high availability**.

### Architecture Overview:

1. **Presentation Tier (Frontend)**: A **.NET web application** hosted on **Azure App Service**, serving the user interface.
2. **Application Tier (Backend)**: A **.NET backend** integrated with **Azure Key Vault** for secure configuration management and business logic.
3. **Data Tier**: A secure **Azure SQL Database** for data storage and management.

This architecture ensures separation of concerns, high scalability, and secure access management using Azure services and Terraform automation.

---

## Key Features

- **Terraform Automation**: Automates the entire infrastructure deployment process, ensuring consistent, repeatable, and version-controlled provisioning. This minimizes human errors and allows for efficient management of infrastructure at scale.
  
- **Scalable Architecture**: Utilizes **Azure App Service** for hosting the frontend and backend, **Azure SQL Database** for scalable data storage, and **Azure Key Vault** to securely manage application secrets.
  
- **Monitoring & Diagnostics**: Integrated with **Application Insights** for real-time application performance monitoring, and **Log Analytics** for centralized logging and troubleshooting, ensuring that issues are quickly identified and resolved.
  
- **Role-Based Access Control (RBAC)**: Implements **RBAC** to enforce fine-grained access control, ensuring only authorized users and services can interact with sensitive resources such as databases and configuration secrets.

---

## Business Impact

This solution showcases the ability to deliver a **scalable**, **secure**, and **automated** cloud architecture, using **Terraform** to automate infrastructure management and **Azure services** for cloud-native reliability. The integration of key components like **Application Insights** and **RBAC** offers multiple business benefits:

- **Efficiency**: Terraform automates the provisioning and management of cloud infrastructure, reducing the time and complexity of deployments.
- **Security**: Integration with **Azure Key Vault** and **RBAC** ensures that sensitive information is securely managed and that access is tightly controlled.
- **Proactive Monitoring**: With **Application Insights** and **Log Analytics**, organizations can monitor the health and performance of applications in real time, proactively identifying issues before they affect end users.

This architecture is an ideal choice for organizations looking to **optimize** their cloud environments, ensuring high availability, security, and scalability for their web applications.

---

## Solution Architecture Diagram

The following diagram illustrates the **3-Tier Architecture** of the web application:
<img src="https://github.com/user-attachments/assets/e0c43834-13df-4339-bebd-1e793a781741" width="600" height="400" />

#### Deployed Solution
<img src="https://github.com/user-attachments/assets/0cbf9a04-9784-43b8-91da-dbee7848b822" width="600" height="400" />

#### Final Result
<img src="https://github.com/user-attachments/assets/c11b024f-b8aa-4289-95bc-9286ce58bf7f" width="600" height="400" />




This architecture separates concerns into three distinct layers:

1. **Frontend** (Presentation Tier): A **.NET** web application hosted on **Azure App Service**.
   
3. **Backend** (Application Tier): A **.NET backend** integrated with **Azure Key Vault** to manage configuration securely.
   
5. **Data** (Data Tier): A **Azure SQL Database** provides scalable and secure data storage.
   
7. **Monitoring & Diagnostics**: Real-time monitoring through **Application Insights** and centralized logging with **Log Analytics**.

---

## Tech Stack

- **Frontend**: .NET Web Application
- **Backend**: .NET Framework
- **Database**: Azure SQL Database
- **Infrastructure**: Terraform
- **Cloud Platform**: Microsoft Azure
- **Monitoring & Logging**: Application Insights, Log Analytics
- **CI/CD**: GitHub Actions (optional), Azure DevOps (optional)

---

## Prerequisites

Before deploying the solution, make sure you have the following:

- **Azure Subscription**: A valid Azure account with permissions to create resources.
- **Terraform**: [Install Terraform](https://www.terraform.io/downloads.html).
- **Azure CLI**: [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).
- **Git**: [Install Git](https://git-scm.com/).
- **SQL Admin Credentials**: Database admin credentials for configuring Azure SQL Database.
- **CI/CD Pipeline**: (Optional) GitHub Actions, Azure DevOps for CI/CD pipeline setup.

---

## Deployment Steps

1. **Clone the Repository**:

   git clone https://github.com/your-username/3-tier-web-app.git
   cd 3-tier-web-app


#### Initialize Terraform:

terraform init

#### Preview the Resources:

terraform plan

#### Deploy the Infrastructure:

terraform apply

#### Verify the Deployment: 
Access the App Service URL, check Application Insights for live performance data, and view Log Analytics for logs.

### License
This project is licensed under the MIT License.

### Customization
You can customize the deployment by modifying the following:

App Service Plan: Adjust the App Service Plan to scale the app to different pricing tiers (e.g., Standard, Premium) or operating systems (e.g., Linux, Windows).
Database Settings: Modify the SQL Database configuration, including size, performance tier, and backup options.
Application Insights: Configure Application Insights to monitor specific metrics or integrate with external monitoring services.
Key Vault Configuration: Modify Key Vault access policies to control which users and services can access secrets and keys.

### Contributing
Contributions are welcome! To contribute:

Fork the repository.
Create a new branch.
Commit your changes.
Push your branch to your fork.
Submit a pull request.

### Conclusion
This project demonstrates a robust, scalable, and secure cloud architecture using Terraform and Azure services. With automated provisioning, comprehensive monitoring, and secure access management, this solution offers a solid foundation for modern cloud-native applications.

Feel free to explore, modify, and extend this setup to suit your virtual machine and networking needs.

Happy Terraforming! 🚀
