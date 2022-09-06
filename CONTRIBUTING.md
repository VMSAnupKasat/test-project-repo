# Contributing Guidance

This page summarizes the guidance on the approach of contributing to Evergreen Delivery IP initiative.

## Team Model

Evergreen Delivery IP initiative is leveraging innersource principles of defining what should be the principles, tools and approaches of managing SAO led and field led IP in ACAI. As such it is expected that this guidance and tools is put together and is used by a broad set of ACAI employees falling into these three categories [as per evergreen IP delivery team approach](https://evergreenip.azurewebsites.net/approach/Team-model.html):

- **core team** (or trusted contributors) who are responsible for overall direction and health of the evergreen delivery guidance and tools IP being produced,
- **contributors** providing feedback, suggesting new ideas and contributing with tools and techniques they use in their projects so they can be reused across ACAI,
- **interested parties** learning about the approach and using it in own IP work, submitting feedback in the form of feature requests, issues and indirectly usage information.

## Content Structure

As per the evergreen delivery IP approach the content of the guidance is spread across [Git repository](https://aka.ms/evergreeniprepo) and [Teams site](https://teams.microsoft.com/l/team/19%3a3d51464fa01345f6a79290ac257ead8c%40thread.tacv2/conversations?groupId=ef3294c6-f026-47a2-842e-1881f6f09272&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47). Information on the key structural elements of these two locations is provided in subsections below.

### Teams Structure

The main content areas of the Teams site are:

- General - channel for general announcements and general discussions
- Core Team - dedicated secure file collaboration area for core team members only (access restricted)
- Content Lenses - files related to the discussion around existing and new content lenses
- Materials - files used as additional materials on the document site
- Presentations - location to have easy access to binary presentation content used in meetings and also referenced in documentation site
- Support - file folder supporting discussion on issues and feature requests

### Repository Structure

Key elements of hte Evergreen Delivery IP repository are:

- `/docs` - location of the guidance documentation
- `/docfx` - location of the template override for the static site generation
- `/pipelines` - location of the source files used in build and release pipelines
- `/platform` - location of the templates and configuration for CI/CD pipeline of the hosting infrastructure
- `readme.md` - description of the project
- `contributing.md` - description of the contribution approach
- `evergreen.yml` - main project metadata file used by indexers to aid in discovery and integration of feedback mechanisms
- `evergreen-docs.yml` - metadata file describing the documentation content managed within the site
- `docfx.json` - main metadata file defining the approach for building DOCFX static site from documentation that is part of the repository

## Contribution Process

The contribution process depends on the type of the channel and approach used but high level there are these two options for contributing:

1. **Informal Feedback**: if contributor has a question or feedback in a more informal way, it is suggested to discuss that on the [Teams site](https://teams.microsoft.com/l/channel/19%3a3cc4920d32cf42128421bbfc2f907af8%40thread.tacv2/Support?groupId=ef3294c6-f026-47a2-842e-1881f6f09272&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47) thread or during one of the scheduled v-Team calls. Based on this additional backlog items can be added by the core team or even the contributor might be asked to help with PR to cover the suggested idea.
2. **Feature Requests and Issues**: if contributor has a specific feature suggestion or issue (bug), contributor can submit a new issue into the [backlog](https://dev.azure.com/evergreen-delivery-ip/docs/_backlogs/backlog/docs%20Team/Epics)
3. **Changes (PRs)**: if contributor has already a specific fix of the structured content items, the suggested approach is to clone the repo, make the relevant change locally or through the repo contribution and submit a pull request (PR) including core team members to have PR review. After some comments and their resolution the PR would get integrated into the main repository thus completing the contribution cycle.

On top of the two approaches described above, other contributions like spreading the word, pointing to relevant best practices is also very welcome by the core team!

## Tools

Evergreen Delivery IP initiative depends on two primary tools for managing the information, tracking issues and work items:

- [Teams site](https://teams.microsoft.com/l/team/19%3a3d51464fa01345f6a79290ac257ead8c%40thread.tacv2/conversations?groupId=ef3294c6-f026-47a2-842e-1881f6f09272&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47) is used to enable communication, regular calls and to store binary and less structured content that might need to be embedded as part of the documentation,
- [Git repo hosted on ADO](https://aka.ms/evergreeniprepo) is used to track structured content including the [approach and guidance documentation](https://aka.ms/evergreenip), starter kit tools that can help kickstart approach implementation for other teams.

In addition to these "content tools", initiative leverages multiple content authoring tools:

- VS Code for Markdown authoring and other structured content managed in ADO
- MS Office tools (Word, PowerPoint, Excel) for additional supporting materials stored in the Teams site
