
InnerSource flow can be best understood by walking through Personas that are involved.

* Consumer
* Contributor
* Maintainer
* Owner
* Chrysalis Admin

![Personas](/docs/attachments/Personas.png)

## Consumer

The Consumer is basically a read-only role. Consumers read or use the domain's published assets. Consumers are also highly encouraged to provide feedback on the asset (via D 365 or Bugs in Azure DevOps).

You are a Consumer by default, but our intention is for you spend a minimal amount of time in that role. Ideally, everyone should move to at least Contributor role so you actively contribute to the Domain's body of knowledge in your area of expertise.

Here is an example of how a Consumer might leverage Managed IP:

Tom is a Consultant working in a new delivery project that is related to Cloud Infrastructure. He came to know through his colleagues that there is a reference architecture published by his domain around this topic. He goes to the aka.ms/discover platform and searches for related content using keywords. He is able to find the SI reference architecture wiki that has useful content. He follows the guidance provided and successfully completes the project. He also provides feedback in D 365 about a section of the content that should be updated

## Contributor

Contributing to assets could be done with basic capabilities or more advanced skills, and although from a role point of view it is ultimately the same, the tooling may be very different due to productivity needs, or ultimately personal preference.

Basic Contributor
The Basic Contributor persona is where the InnerSource development model and Docs as Code approach start to come alive. Instead of providing feedback as the Consumer role does, Basic Contributors are able to directly edit and submit for review changes to the managed knowledge.

This is provided via the widely used Git version control system within Azure DevOps.

The Basic Contributor persona has been designed to minimize the learning curve required to be able to make contributions. The Basic Contributor does not need to know the details of Git, Markdown, or Azure DevOps in order to contribute.

The goal is to have everyone in the domains comfortable as a basic contributor in FY19.

Here is an example of how a Basic Contributor might use Managed IP:

Kiran is a Consultant working in a module of a Reference Architecture project for Cloud Infrastructure. He uses the organization level search portal to see if someone else has already worked in this technology area. He finds that there are a few related implementations and internal wiki pages. In the Azure DevOps Wiki, he clicks the fork button to create an editable copy and creates architecture diagrams and a few demo videos and places them in the Wiki. He then submits a pull request so that his work is integrated into the main Reference Architecture guide once his pull request is approved.

Advanced Contributor
The Advanced Contributor persona is where we hope most domain members reach. Like the Basic Contributor, the Advanced Contributor also makes direct edits to the managed knowledge but the Advanced Contributor uses different tools: Visual Studio Code, Git, and various extensions. These tools enable easier updating across multiple files and wikis. Deeper knowledge of Git and source control enable more reliable change tracking. Knowledge of Azure DevOps enables the Advanced Contributor to fully participate in IP development by seeing and participating in the development backlog.

Here is an example of how an Advanced Contributor might interact with Managed IP:

Jen is a PFE working on Azure network implementations. She reviews the existing Azure networking sections of the SI reference architectures and sees that updates are required in multiple places. As a member of the Azure Infrastructure IP Forum, she has access to the Azure Infrastructure team project in Azure DevOps and is able to see and add items to the development backlog. After a Teams chat with the Maintainer, she is assigned to those backlog items. She uses Visual Studio Code to make edits to the markdown files in multiple Wiki pages. She creates pull requests for her work items to submit her work for review. After addressing comments from the Maintainers about her content, her pull requests are approved and her changes are merged into the master branch.

## Maintainer

The Maintainer persona is the backbone of the InnerSource model. Maintainers are responsible for the relevance, currency, and accuracy of the topic area they are the Maintainer for. Those responsibilities include defining the backlog of work items or tasks required to meet the objectives of relevance and accuracy. They are also responsible for reviewing, commenting, and managing pull requests from Contributors in a timely fashion so that updates occur as close to real-time as possible.

The Maintainer persona is well versed in Azure DevOps, Git, Markdown, and the complete Managed IP architecture.

Here is an example of how a Maintainer might interact with Managed IP:

Emma is an Architect owning a section/module of a Reference Architecture project for Cloud Infrastructure. She defines the work items and tasks required for her section of the Reference Architecture. The Contributors submit updates and documentation through pull requests. She reviews the pull requests and suggests changes. She ensures that the content in the documentation can be understood by the target audience. She will finally accept the pull requests after the comments are incorporated and merge it into the master branch, making it visible to all roles. She will continue to maintain the content in this section on an ongoing basis.

## Owner

The Owner persona is the domain owner of a content type. For Managed IP, this is typically a joint responsibility between Domain SAO, Solution Strategy, and ASD. An example is the ownership of an SI reference architecture.

For community or individual IP, it is the designated point of contact for that IP.

The owner persona may be jointly filled and is responsible for defining the outline and boundaries of the content in question, identifying and recruiting maintainers, creating epics or features to organize the backlog, managing funded and unfunded work, and ensuring that Maintainers are fulfilling their responsibilities.

Here is an example of the responsibilities of an Owner:

Peter is a Chief Architect in Enterprise Services Delivery. He owns a Reference Architecture project for Cloud Infrastructure. The architecture is organized into multiple topics. Each topic is implemented by a sub-team which is led by a Maintainer. Peter manages the IP budget allocated to the work, recruits Maintainers, and works with them to establish the backlog items, work assignments, and timelines. He meets regularly with his Maintainers to ensure that the work is being completed on schedule.

## Chrysalis Admin

The Chrysalis Admin is the facilitator who will setup the Chrysalis project, create workspace for the InnerSource team to collaborate, unblock any issues that community faces.

This is a unique role we have introduced in Chrysalis in order to positively promote InnerSource culture by remove any entry barriers.


</br>
</br>

