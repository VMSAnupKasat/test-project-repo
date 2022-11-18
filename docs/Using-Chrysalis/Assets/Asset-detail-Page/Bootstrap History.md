# Bootstrap History


The Bootstrap History tab is visible only for Asset Type: IP Package or IP Component. You can use it to extract the history of all versions of the selected assets, including **Standalone** and **Engagement** Bootstrap history.

Following are the steps to be followed to Bootstrap the selected asset:

1. Browse to [**_Chrysalis_**](https://aka.ms/Chrysalis/).

2. Select **Explore Assets** dropdown from the Assets menu.

2. Using filters on the top left side of the **Explore Assets** page, select Asset type filter as - IP package or IP component.

3. Select the (IP package or IP component) asset from the search list and click the **Bootstrap history tab**.

![veredit9.png](/attachments/veredit9-76873003-fbb3-45d8-9d9e-4004e0d7ecbf.png)

_Column Description_ 

- **Bootstrap ID:** Unique Id for Bootstrap Run.
- **Engagement ID:** Refers to the id of engagement for which the asset is bootstrapped from the bootstrap portal. example: Opportunity Id and Virtuoso Id.
- **Engagement Type**: Refers to the type of engagement for which the asset is bootstrapped from the bootstrap portal. Example: CompassOne, Virtuoso.

`Note:` 

For standalone bootstraps, Engagement Type will be shown as "**standalone**" and the Engagement Id column will be blank.

- **Bootstrapped By:** Shows the username who ran the bootstrap.
- **Last Updated:** The date when bootstrap ran.
- **Status:** Status of the bootstrap can have below values as: 
Success, Failed, In Progress, Queued.

4. Click each **Bootstrap ID** that opens the log page. You can view all its component logs listed on the left panel. 

5. By default, the package-level logs are shown on the right-side panel.
 
6. Bootstrap ID will be clickable only for Standalone Bootstraps. You can view the bootstrap history details of asset in specific engagement bootstrap history using [**_Engagement Bootstrap History_**](/Using-Chrysalis/Bootstrap-IP/Bootstrap-History)

7. Select a specific component from the left panel to show individual package or components logs. The logs for this specific component will be visible on the right panel.

8. When you click the **Download logs** button on the right pane, a file gets downloaded to your local drive, where you can refer to the log details with the specific package name or component listed.
</br>
</br>
</br>
