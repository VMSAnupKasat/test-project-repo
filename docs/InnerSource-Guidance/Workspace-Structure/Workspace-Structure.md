</br>
</br>
</br>

Every Chrysalis project would not only get a HackBox project but also optionally get a workspace. Provisioning of this workspace using standard templates is automatically facilitated by Chrysalis Admin. 

If the InnerSource team chooses to utilize any part that is pre-existing, they can do so by providing necessary pointers in Chrysalis project page. Also, it is recommended that the project team also adopts the content from standard template as a best practice.

The workspace of each InnerSource project has two main elements where team members can collaborate easily:

- **DevOps Project** used for managing backlog, code, build, test, deploy and publish code assets. Each project would have one or more **Repositories** depending on the project needs. This would be Azure DevOps to start with.

We would also introduce GitHub as well once we get we get the ability to provision at scale.
  
- **Teams Site** used for collaboration and storage of binary assets (e.g., PowerPoint sites, Word documents)


This section provides detailed guidance on how to:

1. **Set up Repository** if you want to enable existing repository to comply with InnerSource standards suggested by Chrysalis.
2. **Set up Teams Site** if you want to enable existing Teams Team for the IP core team and contributors as per Chrysalis suggested practice.


## Set up Repository

As described earlier, the Evergreen Delivery IP approach enables teams to achieve both:

- "light up" their current repositories to start following Evergreen Delivery IP principles and already starting to benefit from integrations enabled through adding minimal set of metadata and registering the repository with the suggest indexing tools
- create a new Git repo in ADO or GitHub Enterprise environment of Microsoft and add the necessary minimal set of files to enable Evergreen Delivery IP compliance.

Specific guidance on setting up repository is provided in [Repository](/InnerSource-Guidance/Workspace-Structure/Repository) page.

Specific guidance on setting up the core metadata content is provided in these pages:

- [readme.md](/InnerSource-Guidance/Workspace-Structure/Repository/Readme.md-Content.html)
- [contributing.md](/InnerSource-Guidance/Workspace-Structure/Repository/Contributing.md-Content.html)

## Set up Teams Site

Collaboration site is based on MS Teams platform and is primarily used for team's informal communication, having and recording sync meetings. It can also be used to store binary content, e.g., PowerPoint presentations and Word documents.

Collaboration site has these properties:

- created as open site for all MS employees to freely joined
- has documentation as part of description
- allows for Core team private conversations through a (set of) separate private channel(s)

More on the suggested settings and structure of the site to enable InnerSource based communication, please see [Collaboration Site](/InnerSource-Guidance/Workspace-Structure/Team-Site) page.

## Update your Chrysalis Project page

The main thing to be done to enable indexing and discovery of the repositories and Teams sites with the global MCS tools used in pursuits and deliveries is to register the IP repositories with project Chrysalis. Chrysalis implementation is in progress, for the latest information see: [https://chrysalis-innersource.azurewebsites.net/](https://chrysalis-innersource.azurewebsites.net/).


## Example

Example of the team following this approach Chrysalis team itself having:

- [Git based ADO repository](https://dev.azure.com/evergreen-delivery-ip/docs) with necessary metadata files and other data specific to the project
- [MS Teams team](https://teams.microsoft.com/l/team/19%3a3d51464fa01345f6a79290ac257ead8c%40thread.tacv2/conversations?groupId=ef3294c6-f026-47a2-842e-1881f6f09272&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47) used for collaboration with broader community and enabling private communication of the core team.
</br>
</br>
</br>


