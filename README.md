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
  
- **Access Policy**: Defines specific permissions to enforce fine-grained access control, ensuring that only authorized users and services can access sensitive resources, such as databases and configuration secrets.

---

## Business Impact

This solution showcases the ability to deliver a **scalable**, **secure**, and **automated** cloud architecture, using **Terraform** to automate infrastructure management and **Azure services** for cloud-native reliability. The integration of key components like **Application Insights** and **RBAC** offers multiple business benefits:

- **Efficiency**: Terraform automates the provisioning and management of cloud infrastructure, reducing the time and complexity of deployments.
- **Security**: Integration with **Azure Key Vault** and **ACCESS POLICY** ensures that sensitive information is securely managed and that access is tightly controlled.
- **Proactive Monitoring**: With **Application Insights** and **Log Analytics**, organizations can monitor the health and performance of applications in real time, proactively identifying issues before they affect end users.

This architecture is an ideal choice for organizations looking to **optimize** their cloud environments, ensuring high availability, security, and scalability for their web applications.

---

## Solution Architecture Diagram
This section displays the architecture of the solution, giving an overview of the system's components and their interactions.

<div style="margin-bottom: 20px;">
    <img src="https://github.com/user-attachments/assets/e0c43834-13df-4339-bebd-1e793a781741" alt="Architecture Diagram" width="600" height="400" />
</div>

#### CI/CD Azure DevOps Deployment
This section showcases the CI/CD pipeline in Azure DevOps, which automates the build, test, and deployment processes.

<div style="margin-bottom: 20px;">
    <img src="https://github.com/user-attachments/assets/5f1fa1d0-fcea-4fa8-9f88-248d69d148b5" alt="CI/CD Azure DevOps Deployment" width="600" height="400" />
</div>

#### Deployed Solution
This section presents a visual representation of the solution in its deployed state, emphasizing how components are configured and interact in a live environment.

<div style="margin-bottom: 20px;">
    <img src="https://github.com/user-attachments/assets/0cbf9a04-9784-43b8-91da-dbee7848b822" alt="Deployed Solution" width="600" height="400" />
</div>

#### Final Result
This section shows the custom landing page displayed after successfully deploying the 3-tier web application, confirming the solution's functionality and completion.

<div style="margin-bottom: 20px;">
    <img src="https://github.com/user-attachments/assets/c11b024f-b8aa-4289-95bc-9286ce58bf7f" alt="Final Result" width="600" height="400" />
</div>

---

This architecture separates concerns into three distinct layers:

1. **Frontend** (Presentation Tier): A **.NET** web application hosted on **Azure App Service**.
   
2. **Backend** (Application Tier): A **.NET backend** integrated with **Azure Key Vault** to manage configuration securely.
   
3. **Data** (Data Tier): A **Azure SQL Database** provides scalable and secure data storage.
   
4. **Monitoring & Diagnostics**: Real-time monitoring through **Application Insights** and centralized logging with **Log Analytics**.

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

   ```bash
   git clone https://github.com/your-username/3-tier-web-app.git
   cd 3-tier-web-app
Initialize Terraform:

terraform init

Preview the Resources:

terraform plan

Deploy the Infrastructure:

terraform apply
### Verify the Deployment:

Access the App Service URL.
Check Application Insights for live performance data.
View Log Analytics for logs.

#### Contributing

I welcome fellow Terraform enthusiasts and contributors to help further develop and enhance this project. Contributions can include, but are not limited to:

Scalability Enhancements: Help improve the scalability of the architecture by adding features such as auto-scaling, load balancing, or optimizing resource allocation.
Disaster Recovery: Implement disaster recovery features such as backup strategies, high availability, and multi-region deployments to ensure the solution remains resilient in case of failures.
Code Optimizations: Suggestions for improving code modularity, maintainability, and overall best practices in Terraform and Azure infrastructure management.

### To contribute:

Fork the repository.
Create a new branch for your feature or fix.
Commit your changes.
Push your branch to your fork.
Submit a pull request.
By contributing to this project, you help make the architecture more robust, scalable, and future-proof. Let’s build a better cloud-native solution together!

### License
This project is licensed under the MIT License.

### Customization
You can customize the deployment by modifying the following:

App Service Plan: Adjust the App Service Plan to scale the app to different pricing tiers (e.g., Standard, Premium) or operating systems (e.g., Linux, Windows).
Database Settings: Modify the SQL Database configuration, including size, performance tier, and backup options.
Application Insights: Configure Application Insights to monitor specific metrics or integrate with external monitoring services.
Key Vault Configuration: Modify Key Vault access policies to control which users and services can access secrets and keys.
### Conclusion
This project demonstrates a robust, scalable, and secure cloud architecture using Terraform and Azure services. With automated provisioning, comprehensive monitoring, and secure access management, this solution offers a solid foundation for modern cloud-native applications.

Feel free to explore, modify, and extend this setup to suit your virtual machine and networking needs.

Happy Terraforming! 🚀