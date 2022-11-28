# Extract

You can extract the IP Package and IP Component asset types of enablers using the **Extract** feature. 

This feature currently supports the **work items query**, **repository** and **Pipeline** enablers.

**_Following are some key points to remember_**: 

- You can view the Extract button when the Asset (IP package/IP component) is in **In Development** or **Active** status.

- **Download** and **Bootstrap** feature is enabled only if the IP package or IP component is successfully extracted.

- When you select an Asset type (IP package or IP component) in In Development status, system will use the same build Number / auto version for extraction.

- When you select an Asset type (IP package or IP component) in Active status, a new build Number / auto version will get generated for each extract.


### Analyze and Extract

- The Extract button is visible only for Asset owners or contributors and Chrysalis and ITSM Admins.

- On the Asset detail page, select the **Extract** button. In this step, system will begin analyzing the content of enablers. 

- Once the Analyze process is successful, you can view the details as shown below:

`Note:`

1. **Work Item Query Enabler analysis**: This will show work item types available in WIQ and work item count.

2. **Repository Enabler Analysis**: This will show repository details and if its accessible or not.

3. **Pipeline Enabler Analysis:** This will show the pipeline name, Repo and Branch details that contain the YML file and the YML path.

4. **Iterations, Areas, and Teams Analysis:** This will show the Iterations, Areas, and Teams detail from ADO that contains the JSON file. During Bootstrap all three (Iteration, Areas, and Teams) are created in project settings in target ADO.

3.  If the Analysis is successful, then the **Start Extract** Button will get enabled.

4. Analyze screen will show an error message if any issues occur while analyzing the [**_enablers_**](https://dev.azure.com/servicesdocs/Chrysalis/_wiki/wikis/chrysalis.wiki/33208/Creating-IP-Enablers)_**; you need to correct the error by selecting the **Edit Asset** button. 

5. After correcting the error, click the **start Extract** button again.


### Start Extract <br>

- Click the **Start Extract** button to view all live extract logs.

- If the extraction is successful, then it shows a success message.

- You can view the error details in the logs when the extraction fails.

# Download

- After successful extraction, you can download the extracted package/component as a zip file. 

- When you click the **Download** button, the downloaded package content can be found under the Downloads folder.

# Bootstrap

Bootstrap delivers the functionality to bootstrap/deploy enablers (work items, repos, and pipelines) from IP Package/IP Component on the provided target DevOps environment.

### Prerequisites

- The version that you select for bootstrapping, must be **extracted** first.

- Refer **_[PAT permission](https://aka.ms/PAT-Access)_** for Bootstrap.

### Run Standalone Bootstrap

1. Once the extraction is successful, click the **Bootstrap** button.

2. Select the **Bootstrap** button and click **Next**.

![testboot3.png](/docs/attachments/testboot3.png)

`Note:` You must check-in the check box to enable the Next button.

2. Enter the Bootstrap **URL** and **PAT** in Target Environment Details.

![url1.png](/docs/attachments/url1.png)

`Note:`
- **Target DevOps URL** (Azure DevOps URL: https://dev.azure.com/{organization}/{project}, Azure DevOps legacy URL: https://{organization}.visualstudio.com/{project} )

- **Target DevOps PAT** (Personal Access Token) :

   a.  For bootstrapping the workitems, PAT should have minimum permission of Read & Write Workitems. 

   b. For bootstrapping the repository, PAT should have minimum permission of Read, write & manage Code.

 `Note:` 

_When you have pipeline as one of the enablers, then you must provide your bootstrap PAT with "Read & execute" access under build scope._ 

5. Click the **Next** button.

6. Select required option as shown below for bootstrap **error handling**.

`Note:`

- **Skip the current (IP Package/ IP Component) on error** :
This is recommended option. This option will skip the IP Package/ IP Component for which error occurs and continue running the next packages/components.
- **Continue on Error**: This option will continue running the package/components even if any error occurs.
- **Skip everything else**: This option will skip everything and stop bootstrap when first error occurs.

![skipADO2.png](/docs/attachments/skipADO2.png)

7. Click the **Next** button to proceed with bootstrap.
8. You can see live logs/commentary from view running bootstrap.

`Note:` 
- You can view the status of bootstrap performed as successful or fail.
- You can search actual error in logs.
- Logs are available for each enabler items (work items, repositors).


Once bootstrap is complete, you can start downloading the logs using the **Download Logs** button.

## Bootstrap without enablers
- The Bootstrap button visible even if there are no enablers on the package, but it has the associated components.

## Bootstrap Package without any Enablers but has Associated Components

- When an associated components is available in the IP Package, you must extract the added components to make it available for bootstrapping.

- The extract button is visible for the IP Package with no enablers but has the associated components added to it. You can change the status to Active for these assets.

- On extracting the Active version of these IP Packages, you can see a new build version is created with the "In Development" status. However, these packages are not available for download.