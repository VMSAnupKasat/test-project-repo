# Select Friendly URL 

A friendly URL is where you can enter the Asset title at the URL level of your choice. You can see this friendly URL field while creating or editing an Asset.

## Create a friendly URL

- While creating a new Asset in Chrysalis using the Add Asset button, you can see the friendly URL field below the Asset title box.

- Once you enter the Asset title, the friendly URL field will auto-suggest a name you prefer to use and validate whether it is available and if the given title is unique.

- Always the Friendly URL you prefer to use must be unique. If the URL you entered already exists, you will see an error message: "URL already exists; please choose or create another one."

- While entering the Asset title, the friendly URL field will auto-update the text by adding a hyphen symbol (-) between the text.

`Note:` When you try to change or remove the auto-capturing text from the friendly URL field, the auto-capture will stop for the second time. You must copy the text from the Asset title field and update the friendly URL field manually.

## Special Characters that are allowed to use

You can use only the following special characters while selecting the friendly URL field.

- `Digits from 0 to 9`
- `Both upper-case and lower-case alphabets are accepted (A-Z/a-z)`
- `No special characters are allowed except hyphen (-) `

## Amend the friendly URL field 

When you want to change or amend the existing friendly URL field, you can use the Edit Asset button and make the corrections on the Friendly URL field.

Once you save the new URL, you will still be able to use the old-friendly URL for searching. However, you can see the new friendly URL updated at the URL level on the Asset title page.

# Friendly URL for Docs as Code Asset types

- When you click the docs as code asset title from the Explore Assets page in Chrysalis, you can see the query string URL in the browser is updated as `"https://chrysalis.microsoft.com/docs/<friendly URL(asset-title)>"`

- When you have the versions available for the docs as code assets, you can see the browser updated with version details: `/docs/<my doc>[/vX[.x]/`

   >> <my doc> :  This element is the friendly URL registered for the document asset.

   >> /vX[.x]:  This element is the optional version (if you do not provide any version details, the latest version of the document is shown.)

  >> [.x]: This includes the version number.

- Special character like underscore and space are not allowed to use while creating the friendly URL.

- You will get an error message when you use an existing friendly URL already used for another docs as code asset.

- When you want to open a specific .html page in the document's sub-path, you can directly enter the sub-page details in the query string in the browser. 
For example:  `""https://chrysalis.microsoft.com/docs/asset-title/section/page.html"`