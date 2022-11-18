# PAT

PAT (Personal Access Token) contains your security credentials for Azure DevOps. You can manage your PAT from ADO under project settings. 

PAT must be created based on the organization where you generate the enablers. So, token id (PAT) varies across different organizations.

## Create a PAT

You need to treat PAT as a password which is accepted chiefly to your accessible organizations and scope of access.

You can refer to this topic- **_[Create a PAT](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=Windows#create-a-pat)_** for the end-to-end steps and manage your PAT access.

## Edit PAT permissions for Enablers 

You must enter a valid PAT before extracting the enablers. Similarly, to bootstrap the enablers, PAT is required.

PAT permissions will differ for each enabler (Work Items, Repository and Pipelines)

You need to _[**modify your PAT**](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=Windows#modify-a-pat)_ based on the process (Extract or Bootstrap). 

You must edit your PAT access at the scope level. Reference the below table that includes the process and scope access.

- _Iterations, Areas and Teams Enabler_ 

|**Process/Scope**| **Project and Team**  |
|--|--|--|--|
| Extract |  Read | 
| Bootstrap | Read, write, & manage |  

- _Work Item Enabler_ 

|**Process/Scope**| **Work item**  |
|--|--|--|--|
| Extract |  Read | 
| Bootstrap | Read & Write |  

- _Repository Enabler_

|**Process/Scope**|**Code**| 
|--|--|--|--|
| Extract |  Read | - |  |
| Bootstrap | Read, write & manage  |

- _Pipelines Enabler_

|**Process/Scope**| **Build**  | **Code** | 
|--|--|--|--|
| Extract |  Read | Read | |
| Bootstrap | Read & Execute  |Read, write & manage |







