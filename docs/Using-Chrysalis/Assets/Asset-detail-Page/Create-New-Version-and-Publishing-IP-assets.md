# Create New Version of IP package and IP component

The Create New Version functionality created a new version from an existing Asset.

You are not permitted to edit the active versions. However, you can create a new version from any active versions available.

`Note:`  

When the Asset version is in In Development status, the Create New Version button is invisible. 

## Prerequisites:

1. Asset type must be an IP Package or IP Component. 
1. Selected Asset must be **Active**.
1. You should be an admin or owner or contributor of the Asset.


## Steps to be followed to create a new version of IP Package & IP Component

1. Select **Explore Assets** dropdown from the Assets menu.
2. Using filters on the left pane, search for the **Asset type**, which is IP Package or IP Component.
3. Navigate to the Asset detail view page and click the **Create New Version** button.
4. This will create a new version (**Build Number/Auto Version**) of Asset and will be available in asset version dropdown.

# Approving or publishing the IP Package and IP Component

You can view the status of an asset from the Assets detail page. 

Only Asset owners and Chrysalis Admin or ITSM Admin can **Publish/Activate** IP package or IP component Assets.

## Steps to be followed while approving the IP package / IP component:

1. Browse to [**_Chrysalis_**](https://aka.ms/Chrysalis/), select **Explore Assets** from the **Assets** menu.

2. Using filters on the top left side of the Explore Assets page, select Asset type filter as - IP package or IP component.

3. Select the **(Asset title)** from the search list.

4. On the Asset detail page, when the Asset Owner updates the status of the Asset to **Active**, it is approved. 

## Following are the Asset status scenarios:<br>

1. Default status of newly created asset will be shown as **In Development**.
2. Status can be changed from **In Development** to **Active** only for extracted Assets.
3. Status can be changed from **Active** to **Deprecated**.
4. Package should be Extracted before **Publish/Activate**.
5. Only **Published/Active** IP Components can be added as Associated Components for IP Package. 

## IP Package and IP Component Asset type status update:

- For any newly created assets, you will see the status as "In-Development" on the Explore Assets page and in the My InnerSource tab.

- When you want to create a new version from an existing active asset, you must provide a unique asset version name.

- **For example,** when you click **Create a New Version** button of an existing active asset version (V1), the system will ask you to enter a new Asset version name. You can enter a unique name as V2. But you cannot use V1.

### Assets with Multiple Version Scenarios:

  - When you have an asset with multiple versions, and if any of the asset version is Active, you will see the primary status "Active" is being updated on the Explore Assets page under the asset title, and you can see the exact status under Assets on the My InnerSource tab.

- When you have an asset with one version as "In-Development" and another as "Deprecated", and there are no active versions available, the status will be updated as "In-Development" on the Explore Assets page under the asset title, and you can see the exact status under Assets on the My InnerSource tab.

- When you have all the asset versions in "Deprecated" status, you will the status updated as "Deprecated" on the Explore Assets page under the asset title, and you can see the exact status under Assets on the My InnerSource tab.

### Assets with Deprecated status

- When an asset version is in Deprecated status, you cannot edit those versions. However, you can use the Create New Version button to create a new asset version from the deprecated asset.

### Assets with IP enablers

When an asset version with active status already has IP enablers added, you cannot edit or modify the enablers but still, use the Edit button that allows you to amend the other asset fields.

### Assets without IP enablers

- When an asset version with Active status has no IP enablers, you can add new enablers using the Edit Asset button. After adding the enablers, the status will change to In-development.

- When there are no IP enablers for an Asset, you can still change the Asset status to Active.

- When you do not see any IP enablers to an asset version that is in Active status, you cannot bootstrap those asset versions.

- Any active asset versions with no enablers will not be available for bootstrapping under the engagement ids, and you cannot add these assets to any engagement ids.

- If an Active asset version has no enablers but has the associated components, you can add that particular asset version to an engagement id on the Engagement details.
</br>
</br>
</br>