# Deep link query search using OData language


In the Chrysalis url `{https://chrysalis.microsoft.com/}`, you can provide the query string in the browser using OData language syntax like $filters, $orderby, $select, Etc. 

To learn more about the syntax usage of the OData language, you can refer to the **_[OData Language Overview](https://learn.microsoft.com/en-us/azure/search/query-odata-filter-orderby-syntax)_**. 

- When you enter the query string in the browser, you will be redirected to the **Insights** page in Chrysalis. 

- You can set the size of each page display using the syntax $size. By default, you can view up 10 records per page.

## The search result is shown in the below format:

![Deeplinkrow.png](/docs/attachments/Deeplinkrow.png)

- You can click the Asset title row from the query result, redirecting you to the Asset detail page.
 
### Reference below the fields you can use for **$filter** syntax in the query string

- Asset Type

- Source

- Solution Areas

- Products

- Scenarios

You can use the **source** in the $filter parameter, which gives the output that contains the requested type of assets in Chrysalis, like the CSE-EFR (Read-only) assets.

`Note:` You cannot use Type in the $filter parameter. If you apply, you get the following error message as

_Invalid expression: Type is not a filterable field. Only filterable fields can be used in filter expressions. Parameter name: $filter._

# Example

`{https://chrysalis.microsoft.com/Query?$filter=source eq'CSE-EFR'}`

### Reference below the fields you can use for **$orderby** syntax in the query string

- CreatedDate

- ModifiedDate

When you want only the latest created asset details, you can apply the **CreatedDate** in the $orderby parameter. Both the CreatedDate and ModifiedDate are sortable.

# Example

`{https://chrysalis.microsoft.com/Query$filter=AssetType&$orderby=CreatedDate desc}`

`Note:`  You cannot use Title in the $orderby parameter. If you apply, you get the following error message as 

_"Invalid expression: Title is not a sortable field. Only sortable fields can be used in $orderby. parameter name: $orderby."_

### Reference below the fields you can use for **$select** syntax in the query string

- Asset Type

- Title

- Status

- Scenarios

- Products

- Solution Areas

- Users (Asset Owner)

You must use "user" as the property name to replace Asset Owner field name in the **$select** parameter.

# Example

`{https://chrysalis.microsoft.com/Query?$select=user}`

`Note:` You cannot use Asset Owner in the $select parameter. If you apply, you get the following error message as 

_Could not find a property named "Asset Owner". Parameter name: $select._

## Sample query string that contains all the syntax
  
`{https://chrysalis.microsoft.com/Query?$filter=AssetType eq 'IP Package'&$orderby=ModifiedDate desc'&$size=15'}`



