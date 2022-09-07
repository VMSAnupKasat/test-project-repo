# Repository

This page describes the guidance on enabling existing repository or creating a new repository for capturing the IP in a structured way.

## Types Supported

Given a long history of MCS teams using ADO and the upcoming focus on GitHub, the Evergreen Delivery IP approach supports Git repositories hosted in both these platforms:

- ADO repository hosted as part of any of the Microsoft organizations.
- Git repository hosted in [GitHub Enterprise MCS collection](https://microsoft.githubenterprise.com/microsoft-consulting-services) (limited access to this for users in Microsoft on-boarded on GHAE).

> [!NOTE]
> Note that GitHub Enterprise MCS collection is currently being rolled out and has limited repository onboarding supported until full processes around security/scanning etc. get established.
> The intention is that over time it should become the primary location for IP work and also project delivery work as also more ADO features are migrated to GitHub Enterprise.

## Provisioning a Repository

### ADO

It is suggested to use one of the well defined and managed organizations in ADO for storing services IP assets, for example:

- [https://servicescode.visualstudio.com/](https://servicescode.visualstudio.com/)
- [https://servicesdocs.visualstudio.com/](https://servicesdocs.visualstudio.com/)

To create an ADO repository for managing evergreen IP, please:

1. proceed to [Services DevOps ServicesCode Repo Request](https://myservices-itsm.microsoftcrmportals.com/support/esdevops-newrepositoryrequest/?ServiceId=6f2361a8-0c29-e911-a97a-000d3a30dc0a) page,
2. fill out the request details and submit the request for repo provisioning, when filling out, choose Internal Project Type.

> [!NOTE]
> Take into account that Security groups need to be set up that will contain list of administrators. Do that before submitting the request on [http://idweb/](http://idweb/). For more informaiton see [Services DevOps Wiki](https://microsoft.sharepoint.com/:w:/t/ESDevOps/EUNlABwfqOtCkkj-dgp4EwYBCI7vD7pXsaT6YSOeMjpbuw?e=nNWcSt).

In addition to these predefined well-known and managed locations Evergreen Delivery IP supports ADO repositories hosted in other organizations of Microsoft. To use them, add the repository to one of the organizations. Note that custom organization will not have the same support by Services DevOps teams, might lack some of the useful tool integration, e.g., SonarQube.

### Git Hub Enterprise

Onboarding for GitHub Enterprise for MCS employees currently is being piloted and planned to be rolled out broadly in H1 of FY22. If due to specifics of the project there is a need to use GitHub Enterprise repository, please submit and [AdHoc request](https://myservices-itsm.microsoftcrmportals.com/support/esdevops-miscellaneousrequests/?ServiceId=39d3f543-0d29-e911-a97a-000d3a30dc0a).

> [!NOTE]
> Note that pilot onboarding is limited and there is no guarantee that GitHub Enterprise access will be granted based on your request.

## Mandatory Metadata

After provisioning the repository, please make sure to add these three files to the root of it to enable it for innersource as per Evergreen Delivery IP approach:

- [readme.md](readme-content.md)
- [contributing.md](contributing-content.md)
- [evergreen.yml](evergreen-ip-metadata.md)

## Repos per IP Asset

There IP assets that are large and require multiple repositories. For example, there can be a microservices application where each service is being managed in its own repository, yet all of them are manged by a single IP team.

In these cases when IP assets have multiple repositories, all of them would need to follow this guidance and require Evergreen metadata information added that would link them together as representation of a single IP asset. Also all of them would be linked to the same [collaboration site](../core/collaboration-site.md) for the IP team.

## Example

- [Git based ADO repository](https://dev.azure.com/evergreen-delivery-ip/docs) of the Evergreen Delivery IP initiative
- [Git based GitHub Enterprise repository](https://microsoft.githubenterprise.com/microsoft-consulting-services/devops-dojo-docs/) of DevOps DoJo innersource project
