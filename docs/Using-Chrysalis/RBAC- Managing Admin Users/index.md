# RBAC- Managing Admin Users

RBAC is otherwise called Role Based Access Control. The Chrysalis admins can manage their access by navigating to- **_https://chrysalis.microsoft.com/manage_**.

Chrysalis application has two types of admin users:

- **Chrysalis Admin:** and **ITSM Admin**: Both users have full access to the Chrysalis system and the bootstrap portal.

Also, there are two user roles for any engagement: **Engagement member** and **Engagement bootstrapper**.

- Chrysalis Admin/ITSM Admin users have the authority to **add/remove** engagement members/engagement bootstrappers based on the requirement. 

- These users are **engagement-specific**, so the access provisions are managed on the Engagement Details page.

### 1. Adding Engagement member or Engagement bootstrapper:

- Browse to **_[Chrysalis,](https://aka.ms/chrysalis)_** and select **Bootstrap** from Assets dropdown.

- Select the next icon from a specific engagement id under All Engagements tab.

![nexticon1.png](/docs/attachments/nexticon1.png)

- On the Engagement Details page, select the **Users** tab.

- Enter the Employee ID/Name/email in **Add Engagement Bootstrapper/Engagement Member** field.

- Select the required option (Chrysalis Admin or ITSM Admin or Both) from the **Check** box and click the **Add** button.

`Note:`

You can click the edit icon from a specific user row to change the user role as required and then click the Save button.

![engagementmemberadd.png](/docs/attachments/engagementmemberadd.png)
 
### 2. Managing Admin users: 

- Only users from the Azure Active Directory are allowed to add as Admin users.


### 3. To Add a user with the Admin Access: 

- Browse to **_https://chrysalis.microsoft.com/manage_** 

- Enter Mail ID of the user in **Add Chrysalis Admin/ITSM Admin** box.

- Select the required option (Chrysalis Admin or ITSM Admin or Both) from the **Check** box and click the **Add** button.

### 4. To Edit the User-Admin roles:

- Click the **Edit** icon from the selected user row.

![editadminroles.png](/docs/attachments/editadminroles.png)

- Using the check box, you can uncheck or switch the user-admin roles as required and click the **Save** button.

![saveeditadmin.png](/docs/attachments/saveeditadmin.png)

When you want to remove a user from all the admin access that is assigned:

From the Chrysalis Admin page:

-    Select the **delete** icon from the user row and click the **Ok** button from the Delete Admin dialogue box.

![userdelete.png](/docs/attachments/userdelete.png)

### 5. Non-admin Users:

When the user is not an admin user and attempts to hit the URL from the manage admin page, the System will show an unauthorized message: "You are not authorized to access this page".<br>

![RBAC3.png](/docs/attachments/RBAC3.png)


