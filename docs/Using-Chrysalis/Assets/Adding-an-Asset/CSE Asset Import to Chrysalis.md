# CSE Asset Import to Chrysalis

You can import Assets from ADO to Chrysalis, which are called "CSE Assets".

## Pre-requisite:

- You must have access to the source query URL (Work Items) where you have the task/user story created.

- Reference the sample work item URL: https://dev.azure.com/IBIS-Test-ADO/CSETestEnv/_workitems/recentlyupdated/

## Create Assets in ADO:

- You can import the work items from ADO to Chrysalis using the Source URL.

- You must _[create a new task](#Create-New-Tasks)_ in work items.

- If you want to link an existing or a _[new user story](#Create-User-Story)_ to the new task created based on the CSE Asset format, then you can link those and save them.

- Once you create the task, the work items will get picked up for import to chrysalis from the back end, and the job starts to run every day at 12 PM (UTC).

- These imported tasks/user stories are called CSE Assets in Chrysalis. You cannot edit or modify these assets in Chrysalis.

- To edit or update the CSE Assets, you can change the work items (tasks/user story) from ADO.

- You will get an _[email notification](#Email-Notification)_ once the import is complete.

### Reference the below steps that begins with creating a new task

1. **_[Create New Tasks](#Create-New-Tasks)_**
1. **_[Create User Story](#Create-User-Story)_**
1. **_[Asset type mapping](#Asset-type-mapping)_**
1. **_[Email Notification](#Email-Notification)_**

### Create New Tasks

- Open the work item (source) query URL, click `+ New Work Item` dropdown, and select Task.

![Newtask.png](/docs/attachments/Newtask.png)

- Enter the Asset title in Title field and Asset description in the Abstract of the task.

![task1.png](/docs/attachments/task1.png)

- Reference the fields that you must fill in. You can select the Asset type based on the **_[Asset type mapping](#Asset-type-mapping)_**.

![task2.png](/docs/attachments/task2.png)

`Note:` You can use the semicolon `(;)` symbol to add more than one value in the Product field.

### Create User Story

- Click `+ New Work Item` dropdown from Work Items and select User Story.

![US1.png](/docs/attachments/US1.png)

- Enter the title of the User Story and select the link icon 

![US2.png](/docs/attachments/US2.png)

- You can either select new item or an existing item from the `+ Add link` dropdown.
- If you want to link an existing task to the user story, pick the link type as 'Child,' select the corresponding task, and click the **OK** button. 

- Enter the title of the user story (you can use the linked task title) and enter value `"IndustryPriorityScenariosFY22"` in the Business field under the Classification section and click the **Save** button.

![Userstoryindustry.png](/docs/attachments/Userstoryindustry.png)

- The User Story is the Parent linked to the task.

![US3.png](/docs/attachments/US3.png)

### Asset type mapping

- You can select any of the below-mentioned Asset types that match your task.

- Reference the below table that shows the available Asset types with their values


|Asset Types| Values  |
|--|--|
|Code Repo  | Code Artifact  |
| Technical Documentation |Guidance |
| Blog Post | Guidance |
| Challenge Based Content |Guidance|
| One Pager | Guidance  |
| Packaged Sprint | Document Template |
| Tools Extension |Tool   |
| Podcast | Others  |
| Deck | Guidance  |
|Whitepaper | Guidance|
|Video|Guidance |
| Research | Guidance |
| Demo | Guidance |
| Exec Communication | Guidance |
| Landing Page | Others |
| Presentation| Guidance | 
| Program Guidance | Guidance |
| Template| Document Template | 

### Email Notification

- Below is a sample copy of the Asset Import email notification format that you receive:

![emailnotification.png](/docs/attachments/emailnotification.png)
- There will be two summary reports; where the first summary covers the total number of Assets imported, newly added Asset counts, updated Asset counts, deleted Asset counts, and the failed Asset import counts.

- The second summary covers the assets (work item id) and the error details. You can refer to the error details and take necessary action.

**_Key point to remember_**

- The CSE Assets do not have the Edit button available, and these are **Read-only** Assets in Chrysalis.

- Any amendments to the CSE Assets can be done only at work item level.

- The Scenarios field is replaced with **Special attributes** in CSE Assets.

- The Special attributes include a new field called **"CSE Scenarios"**.

- You must add the CSE Scenarios with the default value as "IndustryPriorityScenariosFY22" while creating the user story. 

- You can keep adding more than one value under the products field while creating the task and under the business field while creating the user story using the semicolon symbol ( ; ).
 