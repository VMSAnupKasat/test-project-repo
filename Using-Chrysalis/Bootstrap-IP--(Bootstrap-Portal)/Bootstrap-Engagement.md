# Bootstrap Engagement

Bootstrap Engagement is used when you have to bootstrap multiple IP packages or IP components on one or more target DevOps environments.

## Prerequisites

Chrysalis Admin, ITSM Admin, or Engagement Bootstrapper can perform bootstrap from the Engagement Details tab.


## Run Engagement Bootstrap -

1. Browse to [**_Chrysalis_**,](https://aka.ms/chrysalis) select **Bootstrap** from the Assets menu.

2. Click the next icon from the selected engagement id row under the **My Engagement** tab.

3. You can view the IP packages and IP components already added to the selected engagement id from the right panel.

4. Click the **Bootstrap** button on top right panel. Now, you cannot bootstrap again if you have already bootstrapped the existing IP packages or IP components on the selected engagement id. 

5. However, you can add more new Active IP packages or IP components from the left panel and start bootstrap again.

`Note:` 

The bootstrap button will be visible only to Engagement Bootstrapper, ITSM Admin, and Chrysalis Admin.

6. Once the Bootstrap button is clicked, select option **"Select an Existing ADO Project"** and click the **Next** button.

7. Enter Target DevOps URL in **URL** box.
8. Enter Target DevOps PAT (Personal Access Token) in **PAT** box.
9. Click the **Next** button.

`Note:` 

For bootstrapping work items, PAT should have minimum permission to **read & write** work items. For bootstrapping repository, PAT should have minimum permission to **read, write & manage code.**

![Select ADO.png](/attachments/Select%20ADO-6522fd01-c553-452a-bcd8-239d2276376c.png)

`Note:` 

You can select the option **"Use the Same URL and PAT for all IP packages and IP components**" checkbox when the URL and PAT details are the same across all the selected IP packages and IP components.

10. When your Bootstrap runs into an error, select the required option as described below and click the **Next** button.

![skip ADO.png](/attachments/skip%20ADO-d53437bf-f25c-46e7-bf8b-c9714d8ce549.png)

- **Skip the current (IP Package/ IP Component) on error :**
    This is a recommended option. Selecting this will skip the IP package/component for which an error occurs and continue running the next packages/components.

- **Continue on Error**: This option will continue running the package/components along with any error.

- **Skip everything else**: use this option to skip and stop bootstrapping when the first error occurs.

11. Once the bootstrap is complete, you can view the bootstrap id details under the [**_Bootstrap History_**](https://aka.ms/Bootstrap-History-tab) tab.
</br>
</br>
</br>
