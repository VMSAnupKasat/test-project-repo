# evergreen.yml Content

**evergreen.yml** is used to provide the main metadata description of the IP assets repository contains, links to team site and the core team working on the IP. It also includes information on additional [content lenses](../../approach/../approach/diverse-delivery-ip.md) that repository contains so that they can also be discovered. It is the tool to "light" up existing repositories with additional metadata that external tools over time can pick up, ensure more discoverability and integration of feedback.

## Data Model

Data model for the `evergreen.yml` file is a **single** object of type **Evergreen IP Metadata Object** containing:

- information on the version of the metadata that the IP supports
- core IP information like name and description, image URL
- information on core team (trusted contributors)
- links to:
  - IP Forum team site where team collaborates, has meetings
  - repository where issues (backlog) of the IP are managed and where new issues/requests can be submitted
- tags and taxonomy values so that this information can be used in more structured search for IP
- list of lenses that the IP commits to and maintains within the repository

Example:

```yml
- version: 0.1
  id: evergreenip
  name: Evergreen Delivery IP
  description: 
    URL: https://aka.ms/evergreenip
    text: Evergreen Delivery IP is ACAI CTO driven program to improve the way CTO and field teams are finding, reusing, becoming contributors and leading evolution of managed and community IP. This is repository containing the guidance and supporting materials/tools created through the initiative.
  created: 2021-03-24
  core-team:
    - name: Name Surname
      email: name@surname.com
      URL: https://aka.ms/evergreenip
  collaboration: https://URL-to-collaboration-space-on-Teams
  issues: https://URL-to-the-repository-backlog-issues-list
  tags: IP,ACAI,ACAI CTO,guidance,pattern
  taxonomies:
    - type: product
      value: Azure,Dynamics,not product specific
    - type: industry
      value: civilian government
    - type: language
      value: en
  lenses:
    - type: docs
      metadata: evergreen-docs.yml
    - type: ipcomponents
      metadata: evergreen-ipcomponents.yml
```

## Evergreen IP Metadata Object

Property Name | Required or Optional | Type              | Description
------------- | -------------------- | ----------------- | ---------------------------
*version*     | required             | string            | Version of the evergreen IP supported. Must be `0.1` currently
*id*          | required             | string            | Short name (no spaces allowed) that must be unique identifier of the IP asset
*name*        | required             | string            | Name of the IP asset/repo
*description.URL* | optional         | URL               | Description of the IP Asset if there is a full web site that supports it where users can get more information
*description.text* | optional        | string            | Short text based description of the IP asset so it can be used to display as a summary on the search page, for example.
*created*     | required             | date              | Date when the IP repo was created and team established.
*core-team* | required    | array of [**Team Member**](#team-member-object)     | Contains information on the team members.
*collaboration* | required           | URL               | URL to the MS Teams collaboration site used by the team on top of structured collaboration in the repository.
*issues*      | required             | URL               | URL to the Git repository tools on ADO or GIT where users can view and submit issues/requests, understand the backlog of the IP initiative.
*tags*        | optional             | string            | List of comma-separate tags that describe the initiative (not from a managed taxonomy).
*taxonomies*  | optional  | array of [**Taxonomy Value**](#taxonomy-value)      | Optional list of all the taxonomies supported with taxonomy values. Each taxonomy in the list must be present not more than 1 time.
*lenses*      | optional  | array of [**Lens Information**](#lens-information)  | Optional list of all the content lenses supported by IP asset. Each lens in the list must be present not more than 1 time.

## Team Member Object

Property Name | Required or Optional | Type              | Description
------------- | -------------------- | ----------------- | ---------------------------
*name*        | required             | string            | Mandatory name and surname of the team member
*email*       | optional             | email             | E-mail address of the team member.
*URL*         | optional             | URL               | URL to the web site that contains information on the team member.

## Taxonomy Value

Property Name | Required or Optional | Type              | Description
------------- | -------------------- | ----------------- | ---------------------------
*type*        | required             | string            | Unique name of the taxonomy. Currently supported: `product`, `industry`, `language`
*value*       | required             | string            | Comma separate list of mapped taxonomy values.

Given taxonomies can have multiple levels, the guidance on choosing values for the taxonomies are:

- **product** taxonomy - need to specify "Leaf node default label" values from the [Product taxonomy definition file](https://microsofteur.sharepoint.com/:x:/t/EvergreenDeliveryIP/EQ1WWZu7YuhKqI6xV0JoY90BNZvglLA0uhi6-cO1uSaw4w?e=HdMbe3)
- **industries** taxonomy - need to specify "Leaf node default label" values from the [Vertical industries taxonomy definition file](https://microsofteur.sharepoint.com/:x:/t/EvergreenDeliveryIP/EQtXhmTpcnRCmKkFjrGqcv8BA2kTUBJbl7MC9F_elEvvpQ?e=B2QwV6)
- **language** taxonomy - need to specify ISO 2 letter code for the language as per [ISO 639-1:2002](https://en.wikipedia.org/wiki/ISO_639-1)

## Lens Information

Property Name | Required or Optional | Type              | Description
------------- | -------------------- | ----------------- | ---------------------------
*type*        | required             | string            | Unique name of the lens supported. Currently supported: `docs`
*metadata*    | required             | string            | Path in the repository to the location of the metadata file. If relative path, then mapped from location of the `evergreen.yml` file.

For more content on the metadata file of the docs lens see [Documentation Lens guidance](../documentation-lens/index.md).

## Example

Example of a `evergreen.yml` file of the Evergreen Delivery IP initiative you can view in the root of the [repository](https://aka.ms/evergreeniprepo).
