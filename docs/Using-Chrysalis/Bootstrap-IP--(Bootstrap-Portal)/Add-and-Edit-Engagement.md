# Add Engagement

When you click the Add Engagement button, you create a new engagement in the chrysalis application.

## Following are the steps to Add an Engagement-

1. Browse to **_[Chrysalis](https://aka.ms/chrysalis)_**, select **Bootstrap** from **Assets** dropdown.

2. If you are an Engagement Bootstrap user, then you can see only **"My Engagements"** tab.

3. If you are a Chrysalis/ITSM admin, then you can view **"ALL Engagements"** tab.

4. Click the **Add Engagement** button and enter the following details:

|**Fields**| **Values** |
|--|--|
| Engagement Type | Select the engagement type from the dropdown. |
| Engagement ID | Enter the Engagement ID. |
| Associated System | Select the associated system type from the dropdown. |
| Associated System ID | Select the associated system id from the dropdown. |

![Addengagement.png](media/Addengagement.png)

5. Click the **Save** button.

# Edit Engagement

- You can update the existing Engagement id by adding a new associated system and associated system id.

- Under the My Engagement tab, you can see the edit icon on the Engagement type ID row.

`Note:` 

The System will allow you to change only the Associated System and Associated System ID. You cannot make any changes on the parent id, i.e., Engagement type and Engagement ID.

### Following are some key points to remember:

1. If you select a specific Associated System, you can see only those associated ids listed under the Associated System ID field.

1. If you have already linked an Associated System ID with another Engagement type, then you cannot use the same to add it for a second time with any new Engagement types.

1. Once you link an Associated System ID to an Engagement type, and when you search the same Associated System ID in the system, it will show only once under the Engagement type in search list.

1. While creating a new Engagement, you cannot add or select the same Engagement type as the Associated System. For example, you cannot have both the Engagement type and Associated System as " Virtuoso."

1. CompassOne remains as parent id (Engagement type) and Virtuoso as the child id (Associated System).

1. You cannot associate or link Associated system ids to any Engagement ids if it has active IP Packages/IP Components or if there is any bootstrap/partial bootstrap done on the child packages.

