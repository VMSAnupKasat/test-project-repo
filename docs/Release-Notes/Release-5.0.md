##2022.Sep.A (12-Oct-2022)

#Release Notes:

- Feature flag configuration
- URL slug for Asset URL
- Deleted asset should not be searchable in Universal + Engagement search
- Bootstrap - Package versions to be displayed as dropdown for selection
- Ability for owners to delete an asset from Portal
- CSE EFR's (Engineer for Reuse) (CSEng) - Import data, and email notification
- Bootstrap Area Enabler
- Bootstrap Iteration Enabler
- Associated engagement details are dynamically linked to primary engagement details
- Asset search query for different asset sources
- CSU feedback - setting default values and cosmetic change
- Accessibility Bugs in Chrysalis V2 (Medium and Low priority bugs)
- Priority defects in Chrysalis V2
- Bug fixes

#PROD Release Links: 

https://dev.azure.com/servicescode/Chrysalis/_releaseProgress?_a=release-pipeline-progress&releaseId=5413

https://dev.azure.com/servicescode/Chrysalis/_releaseProgress?_a=release-pipeline-progress&releaseId=5414

https://servicescode.visualstudio.com/Chrysalis/_releaseProgress?_a=release-pipeline-progress&releaseId=5420
##List of work items:

| ID     | Work Item Type | Title                                                                                                                                                                                                                                             |
|--------|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 69087  | User Story     | Feature Flag configuration for Chrysalis                                                                                                                                                                                                          |
| 213188 | User Story     | URL slug for asset URL                                                                                                                                                                                                                            |
| 222266 | User Story     | Modify the mark down files of Chrysalis help into DocFx   format                                                                                                                                                                                  |
| 223094 | User Story     | Deleted asset should not be searchable in Universal +   engagement search                                                                                                                                                                         |
| 223681 | User Story     | Bootstrap - packages versions to be displayed as dropdown   for selection                                                                                                                                                                         |
| 224425 | User Story     | Ability for owners to delete an asset from the portal.                                                                                                                                                                                            |
| 224514 | User Story     | CSE EFR's (Engineer for Reuse) (CSEng) - Import data, and   email notification                                                                                                                                                                    |
| 224611 | User Story     | Bootstrap Area Enabler                                                                                                                                                                                                                            |
| 224612 | User Story     | Bootstrap Iterations Enabler                                                                                                                                                                                                                      |
| 224615 | User Story     | Associated engagement details are dynamically linked to   primary engagement details                                                                                                                                                              |
| 224973 | User Story     | Upload of Assets from IP component framework to chrysalis -   Gap analysis                                                                                                                                                                        |
| 225579 | User Story     | Asset search query for different asset sources. (Quick   solution for deep link query)                                                                                                                                                            |
| 215548 | Bug            | [Infosec] Using Client ID and Secret to connect to graph API                                                                                                                                                                                      |
| 217891 | Bug            | Home Screen and Projects - Indexing issues and count is not   upto date                                                                                                                                                                           |
| 218370 | Bug            | Chrysalis V3: Intuitive message should be displayed, In case   PAT is required on demand before clicking extract button                                                                                                                           |
| 218832 | Bug            | Bug 69358: [Keyboard Navigation- Chrysalis V3- Assets]:   Keyboard focus is not moving to 'Tags' dropdown control, while navigating   with down arrow key.                                                                                        |
| 218867 | Bug            | BUG 69386: [Keyboard Navigation- Chrysalis V3- Assets]:   Keyboard focus is getting lost after selecting checkbox.                                                                                                                                |
| 218874 | Bug            | Bug 69396: [Supporting the platform-Chrysalis-Ideas]: In   200% zoom mode, Filters and main menu are not visible in the page.                                                                                                                     |
| 219255 | Bug            | Bug 63008: [Supporting Platform - Chrysalis-Assets]: In 400%   zoom mode, "Submit, cancel" button is overlapping with the content   present in register usage dialog                                                                              |
| 219529 | Bug            | Bug 69312: [Supporting Platform-Chrysalis V3-Bootstrap]: In   aquatic mode package names like 'QA_1' text are not properly visible in   'Bootstrap List' tab content.                                                                             |
| 221926 | Bug            | [DRI Activity] P1 - deleted assets are showing up                                                                                                                                                                                                 |
| 222169 | Bug            | [PROD] Bootstrap not working with Agile template (sporadic   issue)                                                                                                                                                                               |
| 223440 | Bug            | Count of Assets in Insights is different from Home screen   and Asset Explorer Screen                                                                                                                                                             |
| 223622 | Bug            | Page not loading in Dev Environment getting blank screen                                                                                                                                                                                          |
| 223646 | Bug            | Document folder created based on docs version                                                                                                                                                                                                     |
| 224459 | Bug            | Chrysalis V3: Extract button showing Jump effect when user   switch the tab from info to content tab                                                                                                                                              |
| 224704 | Bug            | Unable to redirect to ADO repository from Asset info page                                                                                                                                                                                         |
| 224764 | Bug            | Took time to load Docs as Code fields(Repository   URL,Repository Branch,DocFX JSON Path) details in asset details page.                                                                                                                          |
| 224906 | Bug            | Docs as Code: No Status Icons are displayed for any of the   statuses except ( Active, InDevelopment, Deprecated)                                                                                                                                 |
| 224919 | Bug            | Docs as code: Repository branch field is empty when user   clicked on Edit Asset (Perform multiple times)                                                                                                                                         |
| 224931 | Bug            | Doc as code: When user click on asset title in notification   mail, it is not redirecting to the history tab of that asset                                                                                                                        |
| 224935 | Bug            | Chrysalis V3: Tags, Asset Owner, Contributor fields didn't   set to default when user switch the asset type from IP package to any other   asset                                                                                                  |
| 224946 | Bug            | Upload Failed for Doc as code content to Blob storage for   Asset "CI Innovation Cookbook Ingredients"                                                                                                                                            |
| 224977 | Bug            | Doc as code not getting extracted for repo url with space                                                                                                                                                                                         |
| 224978 | Bug            | Doc as code History showing incorrect error message                                                                                                                                                                                               |
| 224979 | Bug            | Asset Updated Date getting changed on view asset.                                                                                                                                                                                                 |
| 225006 | Bug            | Change process.WaitForExist(500000) to avoid execution   failed                                                                                                                                                                                   |
| 225007 | Bug            | Repo Type check should not be done on "git"                                                                                                                                                                                                       |
| 225072 | Bug            | Chrysalis V3: Unable to register a project, when project   type "VIRTUOSO" is selected                                                                                                                                                            |
| 225218 | Bug            | Internal Server Error for Branches after successful   validation of access to repo url                                                                                                                                                            |
| 225219 | Bug            | Access validation success incase of incorrect of repo name                                                                                                                                                                                        |
| 225409 | Bug            | Docs as Code: Improve this Doc button is not displayed for   this Repo URL (Specifically)                                                                                                                                                         |
| 225538 | Bug            | Chrysalis V3: Solution Areas , Pipeline enabler data is not   populated when uploaded through Manifest / URL                                                                                                                                      |
| 225543 | Bug            | Chrysalis V3: Spelling mistake in Ad hoc Bootstrap and space   issue in bootstrap pop up                                                                                                                                                          |
| 225580 | Bug            | Docs as Code: Deployment Completed, Deployment In Progress   are displaying Asset owner name                                                                                                                                                      |
| 225596 | Bug            | Chrysalis V3 -User is unable to perform engagement bootstrap   from info asset                                                                                                                                                                    |
| 225622 | Bug            | Add Asset - Docs As Code : Validation of Github Repo URL   never completes                                                                                                                                                                        |
| 225625 | Bug            | Improve this doc - Shows 2 buttons                                                                                                                                                                                                                |
| 225630 | Bug            | Docs as Code: Branch not found is displayed , when clicked   on branch URL after Asset creation                                                                                                                                                   |
| 225646 | Bug            | Docs as Code: Prod - Improve this doc button is displayed   twice in Content tab                                                                                                                                                                  |
| 225666 | Bug            | [Feedback] For "Refresh" button functionality   update the message to "Your refresh request has been submitted   successfully."                                                                                                                   |
| 225672 | Bug            | [Feedback] Refresh and Improve this Doc button UI changes                                                                                                                                                                                         |
| 225673 | Bug            | Improve this doc - Leading to 404 error (Github)                                                                                                                                                                                                  |
| 225674 | Bug            | Docs as Code: "The requested content does not   exist" for published assets                                                                                                                                                                       |
| 225678 | Bug            | Chrysalis V3: Register usage icon is not displayed in Info   tab                                                                                                                                                                                  |
| 225681 | Bug            | Doc as code: User unable to perform Refresh content once   deployment is failed                                                                                                                                                                   |
| 225686 | Bug            | Chrysalis hangs while importing Incorrectly formatted JSON                                                                                                                                                                                        |
| 225696 | Bug            | Chrysalis V3: Notification Email is not trigerred to the   user on Follow / Un Follow Functionality in UAT                                                                                                                                        |
| 225697 | Bug            | Chrysalis V3: Follow Button is not displayed during Edit   Asset                                                                                                                                                                                  |
| 225701 | Bug            | Chrysalis V3 - In add asset page/edit asset page: Delete   icon is too Big compared to other Delete icons                                                                                                                                         |
| 225722 | Bug            | Chrysalis V3 - "Engagement Id is required" error   message is still displayed after clicking on cancel and click Add engagement   button                                                                                                          |
| 225723 | Bug            | Chrysalis V3 -System displaying Associated System ID is   required when engagement type is compassOne, and Associated system is   virtuoso                                                                                                        |
| 225724 | Bug            | Chrysalis V3 - Fields are not resetting when engagement type   is changed                                                                                                                                                                         |
| 225727 | Bug            | Chrysalis V3 -No message is displayed after successful   download of logs, export                                                                                                                                                                 |
| 225729 | Bug            | Chrysalis V3 -Id name is not displayed completely and alt   text is also not available                                                                                                                                                            |
| 225759 | Bug            | Asset usage details getting duplicated in sql in sync   service                                                                                                                                                                                   |
| 225948 | Bug            | Chrysalis V3 - Bell icon is not displayed with title in   unfollow/follow pop up                                                                                                                                                                  |
| 225949 | Bug            | Chrysalis V3 - Not able to view the data in Power Bi Report                                                                                                                                                                                       |
| 225996 | Bug            | Getting unable to get Docs as Code Details error message                                                                                                                                                                                          |
| 226099 | Bug            | Sonar Issues: Found in JUL.B ,Hotfix-JulB & Aug.A   branches                                                                                                                                                                                      |
| 226107 | Bug            | Comments section on Edit screen distorted                                                                                                                                                                                                         |
| 226116 | Bug            | Chrysalis V3 - Message is not displayed when no Associated   id is available                                                                                                                                                                      |
| 226161 | Bug            | 'engagementPackage' is null on at least one execution path.                                                                                                                                                                                       |
| 226169 | Bug            | Chrysalis V3: Test Data (Different Options) is displayed in   Engagement Type Drop down of Add Engagement                                                                                                                                         |
| 226195 | Bug            | Sonar bug and issue in API project - Aug.A release                                                                                                                                                                                                |
| 226282 | Bug            | Chrysalis V3: Unable to select the Dropdown option from TAG   field during Asset Creation                                                                                                                                                         |
| 226294 | Bug            | Sonar critical issue in API - Aug.A                                                                                                                                                                                                               |
| 226300 | Bug            | Sonar critical issue in Web UI - AugA                                                                                                                                                                                                             |
| 226319 | Bug            | Chrysalis V3: Space is considered as char in engagement id   and engagement get saved                                                                                                                                                             |
| 226504 | Bug            | Latest Assets not showing up Asset List                                                                                                                                                                                                           |
| 226510 | Bug            | Chrysalis V3: Unable to provide comments in Comment section   when screen resolution > 65                                                                                                                                                         |
| 226519 | Bug            | Chrysalis V3: Although Docs as code enabler is disabled in   IP Package /Component, when manifest file is uploaded with all the enabler   details. Asset is created with Docs as code links                                                       |
| 226520 | Bug            | Chrysalis V3: When user clicks on Vote / Share button,   screen is scrolling up                                                                                                                                                                   |
| 226541 | Bug            | Docs As code: Register asset getting error while submitting.                                                                                                                                                                                      |
| 226570 | Bug            | Docs As Code showing error when details page opened                                                                                                                                                                                               |
| 226574 | Bug            | Docs As Code - Asset Content Preview and Style are incorrect                                                                                                                                                                                      |
| 226580 | Bug            | Chrysalis V3: Doc as code fields is not present in manifest   file error message is displayed , Although Docs as Code enabler is disabled                                                                                                         |
| 226638 | Bug            | Docs as Code: User is navigating to Improve this doc page   when clicked on Improve this doc button from Content tab                                                                                                                              |
| 226960 | Bug            | Chrysalis V3- Unable to extract Assets in UAT Environment                                                                                                                                                                                         |
| 227131 | Bug            | Docs as Code: Alignment issue for Delete Asset button                                                                                                                                                                                             |
| 227308 | Bug            | Chrysalis V3: Contributor is able to Delete the Assets                                                                                                                                                                                            |
| 227507 | Bug            | Chrysalis V3: System not displaying any error message when   clicked on Save asset after providing existing Slug URL                                                                                                                              |
| 227889 | Bug            | Sonar Issues: Found in Sep.A branch                                                                                                                                                                                                               |
| 224735 | User Story     | CSU feedback - setting default values and cosmetic change                                                                                                                                                                                         |
| 225168 | Bug            | Edit Project Screen- Fix the Validation Issue                                                                                                                                                                                                     |
| 131583 | Bug            | Mobile view : Filter selection is not retained                                                                                                                                                                                                    |
| 224637 | Bug            | Error message is not Appropriate for Duplicate Project Title   Validation in Edit Project Screen                                                                                                                                                  |
| 225167 | Bug            | On Edit Project screen, the watermark on the Project Owners   shows as "Add Asset Owner(s)"                                                                                                                                                       |
| 225933 | Bug            | On "Explore Project Types" screen after clicking   on any Project Type and then on "Filters" button the screen is   getting blank                                                                                                                 |
| 226501 | Bug            | Filters in MyInnerSource screen are not working                                                                                                                                                                                                   |
| 223365 | Task           | 63096 , 62987 , 62944 , 62949 , 62941, 63204                                                                                                                                                                                                      |
| 225844 | Task           | 62950: [Screen reader - Chrysalis - Projects]: 'Scenarios'   Label is not associated for search edit field under 'Filter' section on the   page.                                                                                                  |
| 223402 | Task           | 62911: [Screen Reader - Chrysalis - Project]: Headings are   not defined on the project page.                                                                                                                                                     |
| 223450 | Task           | 62974: [Screen reader - Chrysalis - Insights] Blank H2 is   defined on the Summary page.                                                                                                                                                          |
| 223451 | Task           | 62978 : [Keyboard Navigation - Chrysalis - Create Projects]:   Product dropdown is getting expanded automatically after moving focus to   product edit field.                                                                                     |
| 223453 |                | Accessibility issues in Insights screen                                                                                                                                                                                                           |
| 223454 | Task           | 62966: [Keyboard Navigation - Chrysalis - Create project]:   Focus order is not logical after projects control on 'create project' page.                                                                                                          |
| 223457 | Task           | 62946: [Visual Requirements-Chrysalis -Projects]: Ensures   the contrast between foreground and background colors meets WCAG 2 AA   contrast ratio thresholds.                                                                                    |
| 223458 | Task           | 62947: [Supporting platform - Chrysalis - Projects]: Vote,   comment, view, share and save icons are not visible properly after applying   high contrast aquatic mode.                                                                            |
| 223459 | Task           | 62914: [Screen Reader - Chrysalis - Projects]: Screen reader   is not announcing any information after invoking next & previous controls                                                                                                          |
| 223461 | Task           | 62938: [Keyboard Navigation-Chrysalis -Ideas page]: 'Skip to   main content' link is not provided in the page, while navigating using   keyboard tab key.                                                                                         |
| 223462 | Task           | 62940: [Visual Requirements-Chrysalis -Ideas page]:   Luminosity ratio of 'Search' placeholder text of edit filed under Forums and   Categories tab present in the Filters section is 2.2:1 which is less than   minimum required ratio of 4.5:1. |
| 223563 | Task           | 62963 :[Screen Reader - Chrysalis - Insights] Screen reader   is announcing the incorrect role(button) and also not announcing the   state(Selected/unselected) for the summary and other buttons.                                                |
| 223460 | Task           | 62915: [Screen Reader - Chrysalis - Projects]: Screen reader   is not announcing the appeared search results information, after entering   text on search edit field under filter section.                                                        |
| 224748 | Task           | 63007: [Screen Readers-Chrysalis-Assets]: Narrator is not   announcing the state (current page) for the Assets link present on the   navigation landmark of the page.                                                                             |
| 224749 | Task           | 63001: [Screen Reader-Chrysalis -Projects]: Incorrect   heading tag(h5) is defined for 'Test Project UAT 15 Jan' heading.                                                                                                                         |
| 224751 | Task           | 62964: [Keyboard Navigation - Chrysalis - Insights]: Focus   is moving to hidden element and is not visible after the frame that is   present on the summary page while navigating with tab key.                                                  |
| 224752 | Task           | 62965: [Screen Reader - Chrysalis - Insights] There is no H1   is defined on the Summary page.                                                                                                                                                    |
| 224753 | Task           | 62972: [Screen reader - Chrysalis - Insights] Ensures   <iframe> and <frame> elements have an accessible name                                                                                                                                     |
| 224754 | Task           | 62942: [Screen Readers-Chrysalis-Home-Video frame]: Screen   reader is not announcing the state (expanded) for the settings button present   on the video frame of the page.                                                                      |
| 224755 | Task           | 62916: [Usable - Chrysalis - Projects]: Need volunteer(s)   and other multiple buttons are not appearing as buttons                                                                                                                               |
| 224758 | Task           | 62934: [Screen Reader - Chrysalis - Ideas Page]: NVDA is   narrating 'Name' twice for multiple links present in the page, while   navigating using tab key.                                                                                       |
| 224759 | Task           | 62986: [Screen reader - Chrysalis - Insights] Ensures links   that are present on the table must have some discernible text.                                                                                                                      |
| 224760 | Task           | 63010: [Screen reader-Chrysalis-Assets]: Narrator focus is   moving twice to all the navigation links in navigation landmark, while   navigating using Scan mode.                                                                                 |
| 224762 | Task           | 63015: [Visual Requirements-Chrysalis -Test Project UAT 15   Jan page]: Visually Multiple links present on the page are appearing as text                                                                                                         |
| 225396 | Task           | 69306: [Supporting the platform-Chrysalis-Explore Project   types]: In 400% zoom mode, Horizontal scroll bar is getting displayed                                                                                                                 |
| 225481 | Task           | 63785: [Keyboard Navigation - Chrysalis - Project - Need   Volunteer(s)]: Keyboard focus order is not logical on the 'Cancel' control   present on the Need Volunteer(s) dialog while navigating with tab key.                                    |
| 225636 | Task           | 62913: [Screen reader - Chrysalis - Projects]: Main landmark   & other landmarks are not defined on the page.                                                                                                                                     |
| 222337 | Bug            | Few failed instances of Ideas Data Sync on PROD                                                                                                                                                                                                   |
| 223919 | Bug            | [Infosec] Allowing trusted services to bypass the firewall   for storage account                                                                                                                                                                  |
| 223925 | Bug            | [Infosec] Allowing trusted Microsoft services to bypass this   firewall for Key Vault                                                                                                                                                             |
| 225767 | Bug            | Refresh failed: Chrysalis Org Report has failed to refresh                                                                                                                                                                                        |
| 225925 | Bug            | Unable to see Filter option 'Yes' for the Need Volunteers in   Insights Project Dashboard                                                                                                                                                         |
| 223794 | User Story     | Enhancing Automated ADO Project Provisioning                                                                                                                                                                                                      |
| 223970 | User Story     | Enhancing Automated Teams Provisioning                                                                                                                                                                                                            |
| 224282 | User Story     | Customize email templates for CSU Project Type                                                                                                                                                                                                    |
| 225011 | User Story     | Adding New Fields in Chrysalis Project view that is exposed   to SEE for search via FindIt                                                                                                                                                        |
| 222238 | User Story     | Process application insights data and send to synapse                                                                                                                                                                                             |
| 207515 | User Story     | Project Type: Capability to Reactivate Inactive &   Completed Projects in Project Edit Screen                                                                                                                                                     |


##Known issues

| ID     | Work Item Type | Title                                                                                                                                                                                                 | Priority |
|--------|----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------:|
| 215206 | Bug            | [Infosec]   Resolve Component Governance Issues                                                                                                                                                       |     2    |
| 218382 | Bug            | Chrysalis   V3: Second user should get error message when trying to save the asset when   edited at same time (Concurrent user handling)                                                              |     2    |
| 221814 | Bug            | Security   Review (CST-E) This package has been deprecated. Component Governance issue                                                                                                                |     2    |
| 222298 | Bug            | [PROD]   Extract failing with invalid repo message if Repo URL has %20 character                                                                                                                      |     2    |
| 223016 | Bug            | Import a   JSON that’s not formatted correctly, the site hangs. Instead, it would be   great to get an error of some kind to let me know what’s wrong.                                                |     2    |
| 224740 | Bug            | Chrysalis V3   - Extract page is displaying exisiting logs, when user create a new version   of asset and when clicked on extract                                                                     |     2    |
| 224772 | Bug            | Analyze -   Display names and folder name update.                                                                                                                                                     |     2    |
| 224998 | Bug            | Doc as code:   Asset Version is not getting updated in asset detail page, after edit the   asset version                                                                                              |     2    |
| 225012 | Bug            | Chrysalis   V3: Status should be displayed (inDevelopment -> In Development),   (InIncubation -> In Incubation) & (Inactive -> In Active) for all   the asset type except IP Package and IP Compoment |     2    |
| 225074 | Bug            | Chrysalis   V3: During Edit - User is able to save the asset with old data only when same   Title , Version are provided                                                                              |     2    |
| 225541 | Bug            | ChrysalisV3:   Delay in display of logs during test standalone bootstrap                                                                                                                              |     3    |
| 225670 | Bug            | Docs as code   content is not getting updated on document change unless refreshed multiple   times.                                                                                                   |     2    |
| 225695 | Bug            | Chrysalis   V3: Follow/ Un Follow message is not properly alligned in the Asset info page                                                                                                             |     2    |
| 225706 | Bug            | Chrysalis V3   - Successful message is not disappearing                                                                                                                                               |     3    |
| 225725 | Bug            | Chrysalis V3   - when user click on repo, work item, doc as code, pipeline link after asset   creation, separate tab is not opened                                                                    |     2    |
| 225726 | Bug            | Chrysalis V3   -No label is displayed when user hover mouse on extract, download, bootstrap,   export link, link to asset and register usage                                                          |     3    |
| 225728 | Bug            | Chrysalis V3   - Table jump effect is occur in new engagement page                                                                                                                                    |     3    |
| 225758 | Bug            | [PROD] Asset   Usage Data not available                                                                                                                                                               |     2    |
| 225760 | Bug            | Engagement   ID appearing twice in the drop down                                                                                                                                                      |     2    |
| 225779 | Bug            | Chrysalis   V3: "Specific Error Messages" should be displayed in Place of   "General Error message" for User                                                                                          |     2    |
| 225931 | Bug            | Chrysalis V3   - In Follow/ unfollow pop up Consistency (blank space ) is not maintained   between follow \| and title , Bell icon is not displayed                                                   |     2    |
| 225960 | Bug            | Docs as   Code: Update the TOC (horizontal menu) style and other small corrections.                                                                                                                   |     2    |
| 226091 | Bug            | Docs as   Code: Duplicate records are shown in Power BI Report                                                                                                                                        |     2    |
| 226328 | Bug            | Chrysalis   V3: In message format Engagement id is not displayed complete if user provide   the space between the engagement id                                                                       |     2    |
| 226539 | Bug            | Inconsistency   in space between cancel-submit buttons during Asset creation.                                                                                                                         |     2    |
| 226540 | Bug            | Chrysalis   V3: Multiple projects are getting deleted, when user is trying to delete only   one project from contributing projects                                                                    |     2    |
| 226543 | Bug            | Chrysalis   V3: Comment is getting deleted when user deletes the Alias ID in the nested   comments                                                                                                    |     3    |
| 226547 | Bug            | Chrysalis   V3: Nothing is displayed on confirmation screen when user clicks on   "Yes" to De-register the usage                                                                                      |     3    |
| 226549 | Bug            | Chrysalis   V3: Taking so much time for a Project, Asset to get opened when user clicks                                                                                                               |     2    |
| 226576 | Bug            | Doc as code:   Extra-large Contributing Projects drop down is displaying in edit asset                                                                                                                |     2    |
| 226578 | Bug            | Doc as code:   Not able to edit the version of asset for doc as code                                                                                                                                  |     2    |
| 226582 | Bug            | Chrysalis   V3: Error message is still displayed when user uploads valid json file after   uploading blank json prior                                                                                 |     2    |
| 226583 | Bug            | Chrysalis   V3: Download Sample manifest file is not updated with latest enabler   (pipeline)                                                                                                         |     2    |
| 226584 | Bug            | Chrysalis   V3: Full URL links are displayed for Doc as code Link / Pipeline enablers in   info tab of Asset                                                                                          |     2    |
| 226704 | Bug            | Improve this   doc button not available for the assets                                                                                                                                                |     2    |
| 226990 | Bug            | Engagement   system mapping error messages                                                                                                                                                            |     2    |
| 227067 | Bug            | Docs as   Code: System taking longer time to validate Repository URL                                                                                                                                  |     2    |
| 227250 | Bug            | Chrysalis   V3: Unable to Bootstrap the 1st version of package when multiple versions for   the package is available                                                                                  |     2    |
| 227336 | Bug            | Prod-Chrysalis   v3 -- We don't see error message in case we search for asset url which has   deleted asset id                                                                                        |     3    |
| 227493 | Bug            | Chrysalis   V3: URL Slug Field is not auto filled when user deletes & provides data   in Asset Title for second time                                                                                  |     2    |
| 227526 | Bug            | Chrysalis   V3: Space between Project Type and error message in Register Usage                                                                                                                        |     4    |
| 227633 | Bug            | Chrysalis   V3: HTML Tag is displayed in description of CSE Asset                                                                                                                                     |     4    |
| 227893 | Bug            | [Usable-Chrysalis   V3-Bootstrap page]: Visual borders are not provided properly and clearly for   the table which is present in the page.                                                            |     2    |
| 227970 | Bug            | Blind SQL   Injection                                                                                                                                                                                 |     2    |
| 227975 | Bug            | Chrysalis   V3: User is able to view the delete and edit button in asset detail page                                                                                                                  |     2    |
| 228317 | Bug            | Chrysalis   V3: Error message is not displayed although Friendly URL is mandatory field                                                                                                               |     2    |
| 228319 | Bug            | Doc as code:   Not validating the DocFX JSON Path                                                                                                                                                     |     2    |
| 228327 | Bug            | Chrysalis   V3: Register Usage count is not displayed when user navigate to asset from   contribution project                                                                                         |     2    |
| 228328 | Bug            | Chrysalis   V3: New Engagement details tab should be opened, when user click on id from   the comments                                                                                                |     2    |
| 228516 | Bug            | Docs as   Code: Asset is saved when provided similar name in Friendly URL   field(Uppercase & Lowercase)                                                                                              |     2    |
| 228517 | Bug            | On click of   enablers link, data to be visible in the new tab                                                                                                                                        |     2    |
| 228518 | Bug            | Docs as   Code: Alignment & Images are missing in the Content tab of Chrysalis help   doc                                                                                                             |     2    |
| 229019 | Bug | Docs as Code: User manual hyperlink   is missing for DocFX JSON Path during edit asset                                  | 2 |
| 228992 | Bug | Docs as   Code- Asset types are not sorted as per ACs mentioned                                                         | 2 |
| 228949 | Bug | Docs as   Code: Content tab displaying Refused to connect when opening Docs as code   Asset                             | 2 |
| 228947 | Bug | Fix sonar   and CG issues                                                                                               | 2 |
| 228786 | Bug | Chrysalis   V3- Unable to extract Assets in UAT Environment                                                             | 3 |
| 228780 | Bug | Chrysalis   V3: URL shows the GUID first and then getting navigated to the new Friendly   URL when Clicked on any asset | 2 |
| 228775 | Bug | Docs As   code: URL redirection not working properly, Deep links are getting redirected   to default index page         | 2 |
| 228523 | Bug | Chrysalis   V3: Newly Associated asset is not displayed in Projects                                                     | 2 |
| 227066|Bug|UAT & SIT env: Unable to upload Project Image in Edit Project screen|2|
| 228444|Bug|Oldest" sorting is showing wrong data |2|
| 228445|Bug|Project "Oldest" filter not working as expected|2|
| 228848|Bug|SonarQube - Expected an assignment or function call and instead saw an expression|1|

##Test results:

Chrysalis Regression Testing 

![image.png](/.attachments/image-e34a3ce6-c898-45e7-a322-b6a2c018df29.png) 

Chrysalis V2 Regression Testing

![Asset Regression.png](/.attachments/Asset%20Regression-a36b8a40-366c-45d3-b4db-d30c24a8d299.png)

V3 Sep B testing

![image.png](/.attachments/image-331f0c05-22ad-4396-a14d-03a5e659a064.png)

Chrysalis V2 Sep A Testing

![2022 SepA.png](/.attachments/2022%20SepA-9fb9fc98-404e-4c46-959a-51cd6729ee0e.png)

##Snapshots from Services Sonar:

Chrysalis API - https://servicessonar.microsoft.com/dashboard?branch=release%2F2022-SepA&id=chrysalis-api_dev

![image.png](/.attachments/image-a5d5ed73-6ba6-4568-b3ad-956912964b61.png)

Chrysalis Portal - https://servicessonar.microsoft.com/dashboard?branch=release%2F2022-SepA&id=chrysalis-portal-dev

![image.png](/.attachments/image-ae138752-0ac1-4e76-b4d1-2e0a6dba4b51.png)

Chrysalis Web UI - https://servicessonar.microsoft.com/dashboard?branch=release%2F2022-SepA&id=chrysalis-web-ui-dev
![Web-UI code coverage.png](/.attachments/Web-UI%20code%20coverage-425eff8f-c2a2-47cf-8e97-a6debb68eace.png)

Chrysalis Azure API Semmle - https://servicessonar.microsoft.com/dashboard?branch=release%2F2022-SepA&id=chrysalis_chrysalis_azure_api_semmle

![image.png](/.attachments/image-3d18486a-8b78-41a0-bc14-07eda7f79101.png)

Chrysalis v3 fa dev - https://servicessonar.microsoft.com/dashboard?branch=release%2F2022-SepA&id=chrysalisv3-fa-dev

![image.png](/.attachments/image-e3339f87-2f63-4349-9c34-5462c8203a3f.png)

Component Governance - 

![image.png](/.attachments/image-731bcfe2-2430-4e4f-a2a1-93a19e3cf4fb.png)


##Pre production steps

|Description|Onwer |Status  |
|--|--|--|
| CSE EFR Asset Import Setup | Sandip | Done |
| Function App Configuration | Rajasekhar/Atanu | |
##Post production steps

|Description|Onwer |Status  |
|--|--|--|
| Setup & Trigger schedule for CSE EFR | Sandip | Done |
| Confirm Chrysalis Template updated folder is present under /site azure function app |Anup | Done |
| Confirm DocfxTool folder is present under /site azure function app | Anup | Done |
| Check the expiry of GitHub PAT and if needed update it| Anup | Done |
| Check ADO Docs As Code username and update secret, if needed| Anup | Done |
| Confirm SQL post deployment script | Anup | Done |
| Confirm Application Gateway configuration, storage account configuration and content proxy function app configuration are correct| Ashish | Done |
|Any index creations? | Anup | Done |

##Product Master Data Update
1. Cosmos DB in Common Container
- Remove "Python, " from "Python, Azure Kubernetes"
- Remove ", Cosmos DB" from "Kafka, Cosmos DB"
2. SQL  
Run below script to update the same in SQL
3. change "ToEmail" attribute with new value "chrysalissupport@microsoft.com,heather.camm@microsoft.com"
- where c.Type="AssetImport" in the common container

```
DELETE FROM [dbo].[AttributeValues] WHERE AttributeValueID = 724 -- Duplicate record

UPDATE [dbo].[AttributeValues]
SET AttirbuteValueName = 'Azure Kubernetes'
WHERE AttributeValueID = 709

UPDATE [dbo].[AttributeValues]
SET AttirbuteValueName = 'Kafka'
WHERE AttributeValueID = 719

UPDATE [dbo].[AttributeValues]
SET PlatFormID = 5
WHERE AttributeID = 4 and PlatformID is NULL
```

