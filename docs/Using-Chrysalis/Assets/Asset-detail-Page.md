# Asset details Page


On the Asset detail page, you can view the below:

- _[**Info**](#Info)___
- _[**Content**](#Content)_ 
- _**[Bootstrap History](#Bootstrap-History)**_
- **[_Export_](#Export)_**
- **_[Package Version and Status dropdown](#Package-Version-and-Status-dropdown)_**

`Note:` The above tabs are visible for IP Package and IP Component Asset types .

## Info

On the Info tab, you can view the Metadata of the selected Asset such as name, asset version, scenarios, products, solution areas and so on.

You can also view the IP details (query urls for enablers such as Work items, Repos, Pipelines, Docs as Code, Iteration, Areas, and Teams) for IP Package and IP Component asset types.

## Content

On the Content tab, you can view the enablers Content as applicable to the asset types.

### Content - Work Item:

- You can view the **Work items** dropdown from the left panel and right side has the Type, Title and Tag details. 

- When you select any items from the right panel, the work item details will display in a separate window on the same screen.

### Content - Repository:

- You can view the extracted IP package and IP component GIT repository details.

- Click **Repo** dropdown from the left panel and select IBIS portal (1st Repo). 

- Click **Branch** dropdown from the right panel and select the required folders.

- You can view the content of the GIT repository, folders, and files from the selected branch on the same page. 

### Content - Pipelines:

- You can view the Repository and the Branch name of the Pipeline.

- The content section will list the YML scripts from the pipeline, and when you click the variables button, you can read the values if there are any.

### Content - Iteration, Areas, and Teams: (format is shown as similar in ADO)

- Click the Iterations, you can view the details in the right pane with the start date and end date of the iteration.
- When you click the Areas and Teams. you can view the details of the Teams that is configured.

## Bootstrap History

The Bootstrap History tab is visible for Assest Type: IP Package/ IP Component. 

You can use it to extract the history of all versions of the selected assets, including Standalone and Engagement Bootstrap history.

[**_Bootstrap History_**](https://aka.ms/Bootstrap-History)

Apart from the above tabs, you also have an option to download the Asset metadata along with the enablers if any using the Export icon.

## Export

- When you click the Export Icon on the top right side of the Asset detail page, you can see a file which get downloaded to your local drive. You can retrieve the Asset metadata in the Json format.

## Package Version and Status dropdown

Following are the key points that describe how the versioning is managed for the IP packages and IP components:

- Being an Asset Owner, you must extract the asset first to change its status from In Development to Active.

- When there are no enablers on the existing Active package, you can edit the asset and add new enablers but cannot change the asset version.  

- When you edit any fields except the Asset Version and IP details of an existing asset, those changes are updated on the same asset version and no new versions are created.

- The Create New Version button is visible only for Active and Deprecated Assets. 





 





