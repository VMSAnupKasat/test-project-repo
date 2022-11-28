#Creating IP Enablers URL

Adding Enablers to the IP Package and IP Component Asset types will help delivery project teams to adopt best practices in a standard, consistent manner. These Enablers include:

- _[Iterations, Areas and Teams](#iterations%2C-areas-and-teams)_
- _[Work Items](#Work-Items)_
- _[Repositories](#Repository)_
- _[Pipelines](#Pipelines)_
- _[Docs as Code(s)](#Docs-as-Code)_

### Pre-Requisites:  

- You need to have basic access to all features under Boards or Work.
To learn more about permission and access, see [**_Permission and access for work tracking._**](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions-access-work-tracking?view=azure-devops)

## Iterations, Areas and Teams

Adding Iterations, Areas, and Teams as an enabler will allow you to group work items by team, product, or feature areas. 

Iteration paths will enable you to group work into sprints, milestones, or other event-specific or time-related periods.
 
### Create Iterations, Areas and Teams URL

- Sign into your organization (`https://dev.azure.com/{yourorganization}`) where you want to extract the enablers and select the source project.

- Copy the project URL from the address bar and enter the URL to the ADO Project URL field under the IP enablers section in Chrysalis.  
![Iterations.png](/docs/attachments/Iterations.png)

## Work Items

Adding work items enabler will enable you to track the features and requirements you develop for your project, code defects or bugs, and other details using work items.

### Create Work item query URL from ADO

- Sign into your organization (`https://dev.azure.com/{yourorganization}`), where you want to extract the enablers and select the source project.

- Select Queries from the **Boards** menu and click the `+ New query` from the **Queries** page.

- From the Editor tab, click `+ New` dropdown on the top menu. You can choose the work item type and start updating the work item fields and save it.

- Click `Save query` on the top menu. A new query window pops up. Enter the query's name, select the location from the folder dropdown and click the OK button. You can add the work items to your new query folder.

- Edit the new query folder type to a tree of work items or a flat list of work items from the Editor tab.

![typeofquery.png](/docs/attachments/typeofquery.png)

- If you have an existing query folder, select it, you have the work items listed under the Results tab. The URL on the address bar from the Results tab page is called the work item query URL.

- Copy the URL from ADO and update it to the work item query URL field under the IP enablers section in Chrysalis.

![Workitemenabler.png](/docs/attachments/Workitemenabler.png)


 ## Repository

Azure Repos uses **_[Version control](https://learn.microsoft.com/en-us/devops/develop/git/what-is-version-control)_** tools to track your code changes when you save them, and you can recall those changes later if needed.

### Create Repository query URL

- Sign into your organization (`https://dev.azure.com/{yourorganization}`), where you want to extract the enablers and select the source project.

- Select **Repos** from the menu and choose your repo from the top repo path dropdown.

![Repoenabler2.png](/docs/attachments/Repoenabler2.png)

- Click the Clone button on top right side of the repo page.

- Copy the HTTPs URL under the Command line from the Clone Repository window.

`Note:` The URL you copy from the Command line, and the URL on the address bar are both same.

- Enter the copied URL to the Repository URL field under the IP enablers section in Chrysalis.

![Repoenabler.png](/docs/attachments/Repoenabler.png)

## Pipelines

Adding Azure Pipelines as an enabler will allow automatic build and test code projects to make them available to others.
 
### Create Pipeline query URL

- Sign into your organization (`https://dev.azure.com/{yourorganization}`), where you want to extract the enablers and select the source project.

- Select Pipelines from the Pipelines menu. 

- Select **All** tab and choose the respective pipeline. Click the **Edit** button on the top right side of the page.

- Copy the pipeline URL from the address bar and enter the URL to the pipeline URL field under the IP enablers section in Chrysalis. 

![Pipelineenabler.png](/docs/attachments/Pipelineenabler.png)

## Docs as Code 

Using Docs as Code enablers will add a definition to the document format you want to generate.

`Note:` Docs as Code enabler is enabled only for specific users.

### Creating Docs as Code query URL: 

 1. Docs as Code URL- Enter the repository URL (GITHUB/ADO). 
  (You must add Chrysalis-docsAsCode@microsoft.com user under the 
   reader’s role in your repository to give access to Chrysalis). User 
   cannot use the repository without adding the above user id to 
   chrysalis. 

 2. Repository Branch – Enter the branch URL where the HTML documents to be generated.  

    (The branch must have the docfx.Json file either on the root or inside any of the folders.) 

3. Docfx Json Path - Enter the relative path in the DocFx JSON path box. 

     a. If you have the docfx.JSON file saved at the root level, you can enter the above field with "/". 

     b. If you have the docfx.JSON file saved inside the main folder or in any of the sub-folders, then you can enter the above field with "/<Foldername>/". 

4. The sample URL for Docs as code: https://dev.azure.com/servicescode-test/TCS-Test-Project/_git/DocsAsCode 
