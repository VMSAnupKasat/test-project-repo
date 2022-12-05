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

![next icon1.png](/docs/attachments/next%20icon1.png)

- On the Engagement Details page, select the **Users** tab.

- Enter the Employee ID/Name/email in **Add Engagement Bootstrapper/Engagement Member** field.

- Select the required option (Chrysalis Admin or ITSM Admin or Both) from the **Check** box and click the **Add** button.

`Note:`

You can click the edit icon from a specific user row to change the user role as required and then click the Save button.

![engagement member add.png](/docs/attachments/engagement%20member%20add-62bca965-23b2-4404-9ffb-a66cdbe0a414.png)
 
### 2. Managing Admin users: 

- Only users from the Azure Active Directory are allowed to add as Admin users.


### 3. To Add a user with the Admin Access: 

- Browse to **_https://chrysalis.microsoft.com/manage_** 

- Enter Mail ID of the user in **Add Chrysalis Admin/ITSM Admin** box.

- Select the required option (Chrysalis Admin or ITSM Admin or Both) from the **Check** box and click the **Add** button.

### 4. To Edit the User-Admin roles:

- Click the **Edit** icon from the selected user row.

![edit admin roles.png](/docs/attachments/edit%20admin%20roles-63c5ede6-9419-434b-9043-dc3da77e9cfd.png)

- Using the check box, you can uncheck or switch the user-admin roles as required and click the **Save** button.

![save edit admin.png](/docs/attachments/save%20edit%20admin-be9afc4e-6728-48e1-9eb7-83e3d226d609.png)

When you want to remove a user from all the admin access that is assigned:

From the Chrysalis Admin page:

-    Select the **delete** icon from the user row and click the **Ok** button from the Delete Admin dialogue box.

![user delete.png](/docs/attachments/user%20delete-e7783941-b8c9-4a3d-a103-a7c4ccb321ac.png)

### 5. Non-admin Users:

When the user is not an admin user and attempts to hit the URL from the manage admin page, the System will show an unauthorized message: "You are not authorized to access this page".<br>

![RBAC3.png](/docs/attachments/RBAC3-33e017b6-19af-4de4-bfbd-8063c3d1b43e.png)