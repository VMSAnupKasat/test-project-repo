# Insights Overview

**What you cannot see, you cannot measure**. What you cannot measure, you cannot improve. This classic management axiom is true in the innersource world as well. If we want to make our project a success, it is important that we understand whether what we are creating works, but more importantly, how it works.

In the same way that we **monitor** the activity of an ordinary web page, we must also monitor the behaviour in an innersource project. Furthermore, this is one of the pillars of innersourcing.

In this section we will explain **why** it is important to monitor **what** happens behind the scenes and upfront, what aspects should we be taken care of and **how** we can do it.

## Why

Monitoring provides us with tools and mechanisms that help us **measure the impact** of the content we are producing. Understanding when there has been a service failure, when a user abandons a page or what is the flow that a user follows on our website, allows us to establish patterns that will help us to continuously improve the project. 

On the other hand, it is important to understand for what purpose the content is being consumed. If we are talking about an offering, for example, knowing who is visiting our website and what projects they are working on is critical when it comes to identifying potential opportunities with customers. 

There are two main perspectives from which to monitor an innersource project and both are equally important.

- **Consumption perspective**: at the end of the day, the goal of the innersource project is for people to **consume and reuse** the content. That's why, just as you monitor users and their behavior on a website, it is crucial to do so here as well. Under this umbrella we find **Key Performance Indicators** (KPIs) as important as the most visited pages, the average time the user spends on each page, the number of visits, the number of users or the location from where the content is consumed. With this information we can better plan our analysis of availability, health checks, latency, etc. from an infrastructure point of view. Furthermore, we are able to take informed decisions on the content and its structure.


- **Contribution perspective**: we cannot forget that the fundamental pillar of Innersource is collaboration and transparent contribution. One of the [5 top myths about Innersource](https://www.youtube.com/watch?v=5NGqFAvBjGc&ab_channel=InnerSourceCommons) is that `We'll get free work`. This is radically untrue. 90% of the contributions will originate from within the team itself, which is why it is crucial to understand who is contributing, how much they are contributing, and to design a reward model for these users. This way we ensure that the community is active, motivated and quality content is generated. Regardless of the technology used to manage these contributions, KPIs such as the number of Pull Requests generated per user, the average life cycle of Pull Requests, the number of open issues, the average time it takes to close issues or the average delivery time, must be measured and monitored. This will help us to improve the community.

## What

The goal of monitoring is not to measure for the sake of measuring. We need to understand what we want to deliver and ensure that monitoring provides us with the means to measure whether we are meeting our objectives.

**Key Performance Indicators** (KPIs) are the critical (key) indicators of progress toward an intended result. KPIs provides a focus for strategic and operational improvement, **create an analytical basis for decision making and help focus attention on what matters most**. As Peter Drucker famously said, *“What gets measured gets done.”*

We will be leveraging KPIs along this section as main tool for continuously improve. It is important to note that what is offered as per evergreen delivery IP guidance is a basic and generic selection of measures that are recommended in any Innersuorce project. However, some of them may not be relevant in certain contexts, or there may be other KPIs that are not being taken into account here. Therefore, these are simple recommendations and we are open to contributions and suggestions.

Following the same scheme as in the **why** section, we can divide the KPIs according to two lenses, consumption and contribution. The possibilities are endless, but here you can find some examples:

- **Consumption lense** example KPIs would be:
    - Top consumed articles
    - Number of unique roles of the users
    - Average time spent by article
    - Number of views by article
    - ...

- **Contribution lense** example KPIs would be:
    - Total number of Pull Requets
    - Current open issues number
    - Total contributors
    - Total number of closed issues
    - ...

> [!NOTE]
> Remember, the list of KPIs is endless. Also, these are not mandatory KPIs. Make sure you take time to understand your scenario and find the best suit of KPIs that help you govern you Innersource project.

## How

First thing we need to think about is where are we getting the data from. As per evergreen delivery IP guidance, the reference architecture defines the [Application Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview) as the main resource for monitoring. We have chosen this resource because of how powerful it is and the amount of data it is able to log a store. In the [Self Hosted Site section](../documentation-lens/self-hosted-site.md) you can find information about how to deploy it along with all the other resources.

Application Insights would be our best ally when it comes to infrastructure metrics and usage metrics. This would cover our consumption needs. However, when coming into the contributions metrics we need to find a different solution. There are two main approaches we are considering in this case, **Azure DevOps** and **GitHub**. You can approach them from two different points:

- Leveraging **[1es CloudMine Solution](https://1esdocs.azurewebsites.net/datainsights/cloudmine/)**. This is recommended approach. CloudMine is an engineering system designed to collect, curate and deliver data for software engineering analytics, monitoring and scorecards. CloudMine aggregates data from diverse sources including Azure DevOps, HeadTrax, Stack Overflow etc. This solution is super handy since you only need to onboard your repository, either [ADO](https://1esdocs.azurewebsites.net/datainsights/cloudmine/howto/azure_devops_onboard.html?tabs=project) or [GitHub](https://1esdocs.azurewebsites.net/datainsights/cloudmine/data/github.html?tabs=cosmos). CloudMine already has some predefined tables with information you can simply query by using [Kusto Query Language](https://kusto.azurewebsites.net/docs/kusto/query/index.html).

- Taking advantage of **public APIs**. Both, [ADO](https://docs.microsoft.com/en-us/rest/api/azure/devops/?view=azure-devops-rest-6.1) and [GitHub](https://docs.github.com/en/rest) have their own APIs that you can always query if there is any missing information that you can't access via CloudMine. 

Finally, the only missing piece is the representation of this data. How can we have an easy and quick overview of what has been happening? Again, there are a lot of different solutions available, you need to identify which ones better suit your team. This guidance we suggest evergreen IP repositories to leverage [PowerBI dashboards](https://docs.microsoft.com/en-us/power-bi/create-reports/service-dashboards) and templates provided as a starting point.

### What's next?

If you liked what you read and want to know how to apply it, please go to the [How to Setup Infrastructure](how-to-setup-infrastructure.md) section.
