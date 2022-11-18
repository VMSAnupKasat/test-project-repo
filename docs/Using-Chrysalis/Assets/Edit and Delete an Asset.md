 # Editing an Asset

Asset information can change over time, such as changes in Asset title, version, and enablers, if any. You can now modify the asset information using the **Edit Asset** feature available from the Asset detail page.


## Edit Asset

- Browse to **[_Chrysalis._](https://aka.ms/Chrysalis/)**

- Select the **My InnerSource** from menu and click the **Assets** tab to view the list of Assets that you own.

- Click the **Asset Title** to go to the detailed page. If you own more Assets and is not shown on the first page, use the pagination option until you find the Assets you want to edit.

- click the **Edit Asset** button. <br>

- Click the **Submit** button once the modification of asset is complete.

# Delete an Asset

When you no longer need an asset you own, you can select the Delete Asset button from the Asset detail page. 

You cannot delete an asset when it is bootstrapped, any component is associated with the package or when the asset is tagged to any other project.

## Delete Asset:

- Click the **Delete Asset** button on the top right side of the Asset detail page.

- Enter the Asset title and the reason for deletion in the respective fields and click the **Delete** button.

- Only the Asset Owner can delete the Asset. The **Delete Asset** button is not visible for the Asset Contributor.

- You cannot delete those Assets that are **bootstrapped** either through Standalone or Engagement id. You will see an error message as " _This asset is already bootstrapped as a part of an engagement and hence cannot be deleted "_.

- When the Asset is associated with any projects (**Associated Entities**), you will see a confirmation message stating, "_This Asset is associated with one or more projects. Do you still want to delete it_".

- If an Asset is added as a child Asset (Associated Components) under the **IP enablers**, the system will still allow you to delete the Asset with a warning message as "_The asset is associated with multiple assets and hence cannot be deleted. Please remove the association before deleting the asset._".

- For the Assets that is Active and Bootstrapped already, the **Delete Asset** button will be disabled.

`Note:` Once you delete the asset, you cannot revoke it. 

## Editing the Visibility status of an Asset

- Below are key points to remember when you try to change the visibility status of an existing asset using the Edit Asset button.

- When an asset is bootstrapped through a standalone or an engagement id, you cannot change the asset's status to Private.

- When you add an IP component as a child to an IP Package, you cannot change the status of the parent asset to Private.

- You cannot change the status of an asset to Private when it is associated or tagged to any contributing projects.

- Similarly, you cannot add or link Private assets to any projects.

- When you try to change the status of a Private asset to Enterprise, then you will see the following confirmation message.

![private.png](/.attachments/private-101dfe80-f4de-441c-a15d-554cccbbd7ed.png)