# IP Component

Below are the steps to create a new asset as- IP Component type:

- Browse to _**[Chrysalis](https://aka.ms/chrysalis)**_, select **Explore Assets** from Assets menu.

- Click the **Add Asset** button and select **IP Component** from the Asset Type dropdown.

 `Note:` 
You can create an IP component by uploading file from your local drive or by entering the URL of a **_[manifest public file](https://aka.ms/Using-Manifest-File)_** - 

- Enter the URL in the **Asset URL** box.

- Enter asset version in the **Asset Version** box, and asset title in the **Asset title** box.

- When you enter the Asset title, you can see the _[**friendly URL**](https://dev.azure.com/servicesdocs/Chrysalis/_wiki/wikis/chrysalis.wiki/33327/Select-Friendly-URL)_ field auto-capturing from the Asset title box.

- Enter a short description about the asset that you are adding in the 
  Description box and associate Chrysalis projects in the **Associate 
  Chrysalis Projects** box.

`Note:`

If the asset is an outcome of the InnerSource project, then enter the Chrysalis project name under the Associate Chrysalis Project box.

- Select the required option from the **Visibility** radio button. The default status is set to Enterprise.

- When you change the status of the asset to Private, then you must include the other private user ids in the **Users** field. 

`Note:` You must be more cautious when you choose your asset as private. Read the guidance page clearly to understand more about private assets.

- Enter **Scenarios**, **Products**, and **Solution Areas** in their respective fields. 

- Enter the tag details in **Tags** box.<br>(You can enter the first few letters to see if the tag already exists where you can select from them, or you can create your tag.)

- Enter the asset owner name in **Asset Owner(s)** box and asset contributor name in **Asset Contributor(s)** box.

- Enter the **delivery product id** and **domain service line** in their respective fields.<br>(You can select the domain service line from the list that already exists)

- Enter IP details:

>>a. Enter the query URL which can fetch the ADO projects (Iterations, Areas, and Teams) URL in the **ADO Project URL** box. 

>>b. Enter the query URL which can fetch the work items in **Work items query URL** box.

>>c. Enter the repository URL which can fetch the repo details in **Repositories URL** box.

>>d. Enter the repository URL (GITHUB/ADO) in **Doc as Code URL** box, enter the branch URL in **Repository Branch** box, and enter the relative path in **DocFX JSON Path** box.

`Note:` You can refer to [**_Docs as Code_**](https://aka.ms/Docs-as-Code-Type) Asset type to learn more on the above-mentioned fields.

>>e. Enter the pipeline URL where you want to extract in **Pipelines URL** box.

- Check the attestation box and click the **Submit** button.
