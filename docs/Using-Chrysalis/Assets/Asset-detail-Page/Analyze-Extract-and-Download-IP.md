# Analyze Extract and Download IP

You can extract or export the IP packages and IP components using the **Analyze** and **Extract** features.  Now, these features currently support only **work items query** and **repository** enablers.

**_Following are some key points to remember_**: 

- Extract button is enabled only for the selected Asset types (IP package/IP component) from Asset version dropdown having status **In Development** or **Active**. <br>

- **Download** and **Bootstrap** feature is enabled only if the IP package or IP component is successfully extracted. <br>

- When you select an Asset type (IP package or IP component) in **In Development** status, the **same** build Number / auto version will be used for extraction.<br>

- When you select an Asset type (IP package or IP component) in **Active** status, then a **new** build Number / auto version will get generated for each extract.


## Analyze and Extract: 

- On the Asset detail page, select the **Extract** button. In this step, system will begin analyzing the content of enablers. 

`Note:` 

The Extract button is visible only for Asset owners or contributors and Chrysalis and ITSM Admins.

- Once the Analyze process is successful, you can view the details as shown below:

`Note:`

1. **Work Item Query Enabler analysis**: This will show work item types available in WIQ and work item count.

2. **Repository Enabler Analysis**: This will show repository details and if its accessible or not.

3.  If the Analysis is successful, then the **Start Extract** Button will get enabled.

4.  Analyze screen will show an error message if any issues occur while analyzing the enablers; you need to correct the error by selecting the **Edit Asset** button. 

5. After correcting the error, click the **start Extract** button again.


## Start Extract: <br>

- Click the **Start Extract** button to view all live extract logs.

- If the extraction is successful, then it shows a success message.

- You can view the error details in the logs when the extraction fails.

## Download:

- After successful extraction, you can download the extracted package/component as a zip file. 

- It is mandatory to **extract** the package/component, before the Download process starts.

- When you click the **Download** button, the downloaded package content can be found under the Downloads folder.
</br>
</br>
</br>
