# Core Structure

As documented in the [Tools section of the Team Model](../../approach/team-model.md#tools) page the hosting of core assets of the IP team is split over two main data sources:

- **Repository** based on Git and containing:
  - structured metadata used to index the IP content
  - IP sources themselves organized using pre-defined evergreen content lenses or just in a custom way
- **Teams site** used for collaboration and storage of binary assets (e.g., PowerPoint sites, Word documents)

Approach enables multiple external catalogue tools to index the repositories and ensure their discoverability on one hand, automatically push back feedback and issues to repositories on the other hand.

This section provides detailed guidance on how to:

1. [set up repository](#repository) (if one does not exist) or enable existing repository to comply with Evergreen Delivery IP guidance
2. [set up collaboration site](#collaboration-site) based on Teams for the IP core team and contributors as per Evergreen IP guidance
3. [register the set up hosting sites with centralized search tools](#register-with-mcs-tools) like Chrysalis, SEE that ensure discovery and feedback integration

Information on lenses supported and guidance on setting them up is provided separately (see list of lenses in [Getting started](../index.md) page).

## Repository

As described earlier, the Evergreen Delivery IP approach enables teams to achieve both:

- "light up" their current repositories to start following Evergreen Delivery IP principles and already starting to benefit from integrations enabled through adding minimal set of metadata and registering the repository with the suggest indexing tools
- create a new Git repo in ADO or GitHub Enterprise environment of Microsoft and add the necessary minimal set of files to enable Evergreen Delivery IP compliance.

Specific guidance on setting up repository is provided in [Repository](./repo.md) page.

Specific guidance on setting up the core metadata content is provided in these pages:

- [readme.md](readme-content.md)
- [contributing.md](contributing-content.md)
- [evergreen.yml](evergreen-ip-metadata.md)

## Collaboration Site

Collaboration site is based on MS Teams platform and is primarily used for team's informal communication, having and recording sync meetings. It can also be used to store binary content, e.g., PowerPoint presentations and Word documents.

Despite being capable of storing a lot of IP content, to drive structure and evergreen IP principles, it is suggested avoid documenting the IP in binary formats like Word as primary formats where possible, but rather to use repo based documentation published using [documentation lens](../documentation-lens/index.md) guidance. Binary content required can be linked from a structured documentation site via Teams (SharePoint) links or through embedding the content.

Collaboration site has these properties:

- created as open site for all MS employees to freely joined
- has documentation as part of description
- allows for Core team private conversations through a (set of) separate private channel(s)

More on the suggested settings and structure of the site to enable innersource based communication, please see [Collaboration Site](./collaboration-site.md) page.

## Register with MCS Tools

Tha main thing to be done to enable indexing and discovery of the repositories and Teams sites with the global MCS tools used in pursuits and deliveries is to register the IP repositories with project Chrysalis. Chrysalis implementation is in progress, for the latest information see: [https://chrysalis-innersource.azurewebsites.net/](https://chrysalis-innersource.azurewebsites.net/).

Evergreen Delivery IP team is working with project Chrysalis and knowledge management team (SEE/Campus) to have automated registration/crawling of Evergreen Delivery IP sites if they get registered in well known repository locations.

## Example

Example of the team following this approach is Evergreen Delivery guidance IP team itself having:

- [Git based ADO repository](https://dev.azure.com/evergreen-delivery-ip/docs) with necessary metadata files and other data specific to the project
- [MS Teams team](https://teams.microsoft.com/l/team/19%3a3d51464fa01345f6a79290ac257ead8c%40thread.tacv2/conversations?groupId=ef3294c6-f026-47a2-842e-1881f6f09272&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47) used for collaboration with broader community and enabling private communication of the core team.
