This page provides guidance about the approach and suggested structure of defining the README.md for your InnerSource project code repository.

## Introduction

Readme file is one of the first files that would need to be created as part of any InnerSource project code repository being started to capture the main information about it, provide useful pointers to additional elements in the repository or the project team site.

Although in general there are no hard rules around the format and content of the readme file, as a general guidance it is suggested to use:

* Markdown format for creation the file (readme.md)
* Follow the general content structure described below.

## Suggested Structure

The structure of the readme file is suggested to include the sections listed below.

### Name

Name of the project that is managed within the asset must be provided. This is the name that people will refer to when talking about the project being created.

    Note
    If the project is not active anymore and there is no active contribution it is suggested to include note about this status as early as possible in the readme file.

### Description

Description of the project must provide more details about the project itself, its goals, challenges it is solving.

### Getting Started

In addition to overall description provided in previous section, it is suggested to include a short list of actions that can be taken by the target audience to learn more about the initiative or even to start a discussion and plan contribution. This ensures there are "affordances" included that help to point people on how to get more information or start contributing.

### Installation/Usage

If the asset produced is something that can be installed or used otherwise.

For example:

* a tool that needs to be installed on client machine to use it,
* guidance documentation that is being published from this repo into external documentation site),
* a library that has API exposed and is installed as a NUGET package to include it into someone else overall solution.

Use this section to describe how the asset / IP produced out of this repository can be installed and used. In simple cases this could be a link to a web site that, for example, is built using code in this repo. In more complex cases where the repository contains a microservice of a large solution there can be installation guidance and reference to overall solution description.

### Support

Describe how users of the Asset can provide feedback, get support if they face any issues. Ideally the team should include communication channels that can be used to request support. Could be a channel in Teams and/or list of issues that users can submit their issues in and track their status.

### Contribute

Chrysalis project repositories need to follow InnerSource principles. Thus and important aspect of the repository is contribution rules and approaches. This section must provide introduction into contribution approach and link to contributing.md that should expand on it in details.

### Core Team

In any InnerSource project most of the contribution comes from the trusted contributors (called here core team). Readme should have a list of these trusted contributors so it is clear for other contributors who, for example, to reach out in case of certain questions etc.

If possible and applicable, please include information on the focus area of a contributor of IP set is large and there are different hats that each of the core team's contributors have.

### Acknowledgements

Acknowledgements section can include reference to contributors (even if they are not part of the core team), it can also include lists of other repositories and components that are used as part of the Assets being managed in the repo.

### Scope

Although InnerSource by default is opened to entire organization, there might be cases where initially repositories and teams are more restricted. This section must provide information on the "scope of visibility" of the work so contributors have full clarity on this.

## Example

Example of the readme.md file of the InnerSource project itself is available in this repository.

</br>
</br>
</br>
</br>
