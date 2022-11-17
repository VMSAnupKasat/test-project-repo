# Docs as Code

When you want to register or create a new Asset type as Docs as Code, you must have read access to the specified repository.

Below are the steps to create a new asset as- Docs as Code type:

- Browse to _**[Chrysalis](https://aka.ms/chrysalis)**, select **Explore Assets** from Assets menu.

- Click the **Add Asset** button and select Docs as Code from the Asset Type dropdown.

- Enter the Repository URL (GitHub/ADO).<br>
(You must add **_Chrysalis-docsAsCode@microsoft.com_** user under the reader’s role in your repository to give access to Chrysalis).

`Note:` Unless user is added, the Repository will not be accessible to Chrysalis.

- Enter the Repository Branch.<br>
  a. You can input the above field with the branch URL for which you want to generate the HTML documentation.<br>
  b. The branch must have the docfx.Json file either on the root or inside any of the folders.

- Enter the relative path in the DocFx JSON path box. <br>
  a. If you have the docfx.JSON file saved at the root level, you can enter the above field with "/".<br>
  b. If you have the docfx.JSON file saved inside the main folder or in any of the sub-folders, then you can enter the above field with "/<Foldername>/".

`Note:` 
   You can create the Docfx JSON file on your own and provide the source URL in the above Docfx JSON path. Refer to this **_[Docfx User Manual ](https://dotnet.github.io/docfx/tutorial/docfx.exe_user_manual.html)_** to learn how to construct the Docfx JSON file.

- Enter the version name in the **Asset Version** box, and asset title in the **Asset title** box.

- When you enter the Asset title, you can see the _[**friendly URL**](https://dev.azure.com/servicesdocs/Chrysalis/_wiki/wikis/chrysalis.wiki/33327/Select-Friendly-URL)_ field auto-capturing from the Asset title box.

- Enter a short description about the asset that you are adding in the Description box and associate Chrysalis projects in the **Associate Chrysalis Projects** box.

`Note:` If the asset is an outcome of the InnerSource project, then enter the Chrysalis project name under the Associate Chrysalis Project box.

- Select the required option from the **Visibility** radio button. The default status is set to Enterprise.

- When you change the status of the asset to Private, then you must include the other private user ids in the **Users** field. 

`Note:` You must be more cautious when you choose your asset as private. Read the guidance page clearly to understand more about private assets. 

- Enter **Scenarios**, **Products**, and **Solution Areas** in their respective fields. 

- Enter the tag details in **Tags** box.<br>(You can enter the first few letters to see if the tag already exists where you can select from them, or you can create your tag.)

- Enter the asset owner name in **Asset Owner(s)** box and asset contributor name in **Asset Contributor(s)** box.

- Check the **attestation** box and click the **Submit** button.

# Docs as code:  Asset registration, Asset status updates: In progress, Failed, and Completed. 

- When you create the docs as code assets, you can see the content tab with the status" In progress."

- If you are the owner of the docs as code asset, you can see the reason for failure on the **Initiated By** field dropdown under the **History** tab. Other users will see the message "_Content not available._"