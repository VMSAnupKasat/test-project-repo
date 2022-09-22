</br>
</br>
</br>
This page describes the guidance on enabling existing repository or creating a new repository for capturing the IP in a structured way.
## Types Supported

Given a long history of MCS teams using Azure DevOps and the upcoming focus on GitHub, the Chrysalis InnerSource approach supports Git repositories hosted in both these platforms:

- ADO repository hosted as part of any of the Microsoft organizations.
- Git repository hosted in [GitHub Enterprise MCS collection](https://microsoft.githubenterprise.com/microsoft-consulting-services) (limited access to this for users in Microsoft on-boarded on GHAE).

       Note
       Note that GitHub Enterprise MCS collection is currently being rolled out and has limited repository onboarding supported until full processes around security/scanning etc. get established.
       The intention is that over time it should become the primary location for IP work and also project delivery work as also more ADO features are migrated to GitHub Enterprise.

## Provisioning a Repository

### Azure DevOps

It is suggested to use one of the well defined and managed organizations in Azure DevOps for storing services IP assets, for example:

- [https://dev.azure.com/chrysalis-innersource](https://dev.azure.com/chrysalis-innersource)
- [https://servicescode.visualstudio.com/](https://servicescode.visualstudio.com/)
- [https://servicesdocs.visualstudio.com/](https://servicesdocs.visualstudio.com/)

In addition to these predefined well-known and managed locations Chrysalis supports ADO repositories hosted in other organizations of Microsoft. To use them, add the repository to one of the organizations. Note that custom organization will not have the same support by Services DevOps teams, might lack some of the useful tool integration, e.g., SonarQube.

### Git Hub Enterprise

Onboarding for GitHub AE for MCS employees currently is being piloted and planned to be rolled out broadly in H1 of FY22. If due to specifics of the project there is a need to use GitHub Enterprise repository, please submit and [AdHoc request](https://myservices-itsm.microsoftcrmportals.com/support/esdevops-miscellaneousrequests/?ServiceId=39d3f543-0d29-e911-a97a-000d3a30dc0a).

    Note
    Note that pilot onboarding is limited and there is no guarantee that GitHub AE access will be granted based on your request.

## Mandatory Metadata

After provisioning the repository, please make sure to add these two files to the root of it to enable it for InnerSource as per Chrysalis approach:

- [readme.md](Repository/Readme.md-Content.html)
- [contributing.md](Repository/Contributing.md-Content.html)

## Repos per IP Asset

There IP assets that are large and require multiple repositories. For example, there can be a microservices application where each service is being managed in its own repository, yet all of them are managed by a single IP team.

In these cases when IP assets have multiple repositories, all of them would need to follow this guidance. Also all of them would be linked to the same [collaboration site](/InnerSource-Guidance/Workspace-Structure/Team-Site) for the IP team.

## Example

- [Git based ADO repository](https://dev.azure.com/evergreen-delivery-ip/docs) of the Evergreen Delivery IP initiative
- [Git based GitHub Enterprise repository](https://microsoft.githubenterprise.com/microsoft-consulting-services/devops-dojo-docs/) of DevOps DoJo innersource project
</br>
</br>


