# Bootstrap History


You can view the extracted log details under the Bootstrap History tab on the Asset detail page, including Standalone and Engagement Bootstrap history.

The Bootstrap History tab is visible only for Asset Type: IP Package or IP Component. 

Following are the steps to be followed to Bootstrap an asset:

1. Browse to [**_Chrysalis_**](https://aka.ms/Chrysalis/).

2. Select **Explore Assets** dropdown from the Assets menu.

2. Using filters on the top left side of the **Explore Assets** page, select Asset type filter as - IP package or IP component.

3. Select the (asset title) from the search list and click the Bootstrap History tab.

![Standalone Boot.png](/.attachments/Standalone%20Boot-f99f9f7e-ed51-487c-a2f8-a1caf67d9f94.png)

_Column Description_ 

- **Bootstrap ID:** Unique Id for Bootstrap Run.
- **Engagement ID:** Refers to the id of engagement for which the asset is bootstrapped from the bootstrap portal. **example: CompassOne and Virtuoso Id.**
- **Engagement Type**: Refers to the type of engagement for which the asset is bootstrapped from the bootstrap portal. Example: CompassOne, Virtuoso.

`Note:` 

For standalone bootstraps, Engagement Type will be shown as "**Standalone**" and the Engagement Id column will be blank.

- **Bootstrapped By:** Shows the username who ran the bootstrap.
- **Last Updated:** The date when bootstrap ran.
- **Status:** Status of the bootstrap can have below values as: 
Success, Failed, In Progress, Queued.

4. Click each **Bootstrap ID** that opens the log page. You can view all its component logs listed on the left panel. 

5. By default, the package-level logs are shown on the right-side panel.
 
6. When you click the Bootstrap ID for Standalone Bootstraps, the system will redirect you to the Test- Standalone Bootstrap Details page, where you can view the packages and components used under the specific id.

`Note:`

You can view the bootstrap history details of asset in specific engagement bootstrap history using [**_Engagement Bootstrap History_**](/Using-Chrysalis/Bootstrap-IP/Engagement-Bootstrap-History)

7. You can select a specific component from the left panel to view the individual package or component logs. The log details are visible on the right panel.

8. When you click the **Download logs** button on the right pane, a file gets downloaded to your local drive, where you can refer to the log details with the specific package name or component listed.

