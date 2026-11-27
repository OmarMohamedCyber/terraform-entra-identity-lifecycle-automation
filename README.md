\# Enterprise Identity Lifecycle Automation with Terraform and Microsoft Entra ID



\## Project Overview



This project demonstrates identity lifecycle management (Joiner, Mover, Leaver) using Microsoft Entra ID, Microsoft Graph PowerShell, and Terraform.



The goal is to automate employee identity provisioning and department-based access management in a fictional healthcare organization.



All employee records used in this project are synthetic.



\## Technology Stack



\- Microsoft Entra ID

\- Microsoft Graph PowerShell SDK

\- Terraform

\- Azure CLI

\- PowerShell

\- Git and GitHub



\## Architecture



1\. Synthetic employee information is maintained in a CSV file.

2\. Microsoft Graph PowerShell is used to provision the test user identity.

3\. Terraform retrieves the user from Microsoft Entra ID.

4\. Terraform manages department security group membership.

5\. Terraform state provides a record of managed infrastructure resources.



\## Implemented Features



\- Configured Terraform Azure AD provider.

\- Authenticated Terraform against Microsoft Entra ID.

\- Created five department security groups:

&#x20; - IT

&#x20; - HR

&#x20; - Finance

&#x20; - Clinical

&#x20; - Operations

\- Provisioned a synthetic Joiner account using Microsoft Graph PowerShell.

\- Configured Terraform to look up the user.

\- Successfully deployed Terraform-managed IT department group membership.

\- Configured Git exclusions for Terraform state, local provider files, and sensitive variable files.
- Implemented and tested a Leaver workflow using Microsoft Graph PowerShell.

\- Disabled Bonnie Clyde's synthetic HR account.

\- Verified the account's AccountEnabled property was False.

\- Successfully revoked the user's sign-in sessions.

\- Implemented and tested a Mover workflow using Microsoft Graph PowerShell.

\- Removed Emily Davis from the Finance security group.

\- Updated her Entra ID department attribute from Finance to HR.

\- Added her to the HR security group.

\- Verified the department attribute and final group membership.



\## Identity Lifecycle Scope



| Workflow | Status |

|---|---|

| Joiner — account creation | Implemented and tested |

| Joiner — IT group assignment | Implemented and tested |

| Mover — Finance-to-HR transfer | Implemented and tested |

| Leaver — account disablement | Implemented and tested |

| Leaver — sign-in session revocation | Implemented and tested |

| Bulk employee provisioning | Planned |

| Automated access auditing | Planned |



\## Department Security Groups



| Group | Purpose |

|---|---|

| SG-IT-Users | IT department access |

| SG-HR-Users | HR department access |

| SG-Finance-Users | Finance department access |

| SG-Clinical-Users | Clinical department access |

| SG-Operations-Users | Operations department access |



\## Repository Structure



```text

terraform-iam-jml/

├── data/

│   └── employees.csv

├── terraform/

│   ├── main.tf

│   ├── groups.tf

│   ├── joiner.tf

│   ├── test.tf

│   └── .terraform.lock.hcl

├── documentation/

├── screenshots/

└── .gitignore

```



\## Security Considerations



\- Uses synthetic employee records only.

\- Temporary passwords are handled outside Terraform.

\- Passwords are not committed to GitHub.

\- Terraform state files are excluded from version control.

\- Local Terraform provider working files are excluded.

\- No employer accounts or production identities are used.



\*\*Important:\*\* Terraform state can contain sensitive identity and infrastructure information. It must be protected and stored securely.



\## Deployment and Validation



The Terraform configuration was validated using:



```powershell

terraform init

terraform validate

terraform plan

terraform apply

terraform state list

```



Microsoft Graph PowerShell was used to provision the synthetic test identity, while Terraform manages its department group membership.



\## Project Status



Version 2.0 — Joiner, Mover, and Leaver workflows implemented and tested in a Microsoft Entra ID lab environment.



\- Joiner: Created a synthetic user and assigned IT group membership.

\- Mover: Transferred a synthetic user from Finance to HR and updated group membership.

\- Leaver: Disabled a synthetic user account and revoked its sign-in sessions.



\## Learning Objectives



This project demonstrates practical experience with:



\- Identity and Access Management (IAM)

\- Infrastructure as Code (IaC)

\- Microsoft Entra ID administration

\- Microsoft Graph automation

\- Terraform resource and data-source management

\- Department-based access control

\- Secure configuration and Git practices

- Disabled Bonnie Clyde's synthetic HR account in Microsoft Entra ID.

\- Verified the account's AccountEnabled property was False.

\- Successfully revoked the user's sign-in sessions.

- Removed Emily Davis from the Finance security group.

\- Updated her Entra ID department attribute from Finance to HR.

\- Added her to the HR security group.

