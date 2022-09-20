# Standalone Bootstrap

Standalone Bootstrap delivers the functionality to bootstrap/deploy enablers (work items and repos) from IP Package/IP Component on the provided target DevOps environment.

## Prerequisites

- The version that you select for bootstrapping, must be **extracted** first.

- Only the selected package will get bootstrapped using **Standalone Bootstrap**.

## Run Standalone Bootstrap-

1.  Select the IP component and IP package details using [**_Explore-Assets._**](https://aka.ms/Explore-Assets)
2. Click **Assets** dropdown and select the **Version** that need to be bootstrapped.

3. Click the **Bootstrap** Button. <br>

4. Enter **URL** and **PAT** in Target Environment Details.

![url1.png](/attachments/url1-97b95283-70d6-406d-8346-dafe45b5067b.png)

`Note:`
- **Target DevOps URL** (Azure DevOps URL: https://dev.azure.com/{organization}/{project}, Azure DevOps legacy URL: https://{organization}.visualstudio.com/{project} )
- **Target DevOps PAT** (Personal Access Token) : <br>
For bootstrapping workitems, PAT should have minimum permission of Read & Write Workitems. For bootstrapping repository, PAT should have minimum permission of Read, write & manage Code.

5. Click the **Next** button.
6. Select required option as shown below for bootstrap **error handling**.

`Note:`

- **Skip the current (IP Package/ IP Component) on error** :
This is recommended option. This option will skip the IP Package/ IP Component for which error occurs and continue running the next packages/components.
- **Continue on Error**: This option will continue running the package/components even if any error occurs.
- **Skip everything else**: This option will skip everything and stop bootstrap when first error occurs.

![skip ADO2.png](/attachments/skip%20ADO2-495d8a71-238b-421e-b1dc-7628a2265b5d.png)

7. Click the **Next** button to proceed with bootstrap.
8. You can see live logs/commentary from view running bootstrap.

`Note:` 
- You can view the status of bootstrap performed as successful or fail.
- You can search actual error in logs.
- Logs are available for each enabler items (work items, repositors).


Once bootstrap is complete, you can start downloading the logs using the **Download Logs** button.
</br>
</br>
</br>
