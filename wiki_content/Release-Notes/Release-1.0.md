# Release 1.0 [GA on 31-Aug-21]

# Ideas
- Explore Ideas
- Integration of Ideas D365 with limited Forums
- Post an Idea – A pop up with list of forums, selecting a forum will lead to its specific forum in D365 portal.
- Display Associated Projects in Ideas Page
- Shows the total number of Ideas.
- Sort By: `Newest`, `Oldest`, `Most Votes`, `Least Votes`, `Most Comments`, `Least Comments`
- Filter Ideas by `Forum` and `Categories`
- Multi select of `Forums` and `Categories` in the filter’s options either individually or together.
- Search for Ideas – to search using keywords and ability to clear search with an X button in the search box.
- View option for each Idea.

| **Collapsed view [Default]** | **Expanded View**    |
|------------------------------|----------------------|
| `Title of the Idea`          | `Title of the Idea`  |
| `Votes`                      | `Votes`              |
| `Comments`                   | `Comments`           |
| `Shortened Description`      | `Full Description`   |
| `Status of the Idea`         | `Submitted By`       |
| `Forum Name`                 | `Admin`              |
| `Last updated date`          | `Admin Response`     |
|                              | `Status of the Idea` |
|                              | `Forum Name`         |
|                              | `Last updated date`  |

- Option to view the Idea in D365 portal (Learn More).
- Trending Ideas – displays up to 6 ideas on the right side of the page with an option to scroll down to view more.  Current logic for trending ideas is based on the most votes and most comments.
- Option to view 4, 8, 16, 32 ideas per page.

# Projects

- Explore Projects
- Shows the total number of Projects.
- Search box – to search using keywords and ability to clear search with an X button in the search box.
- Filter Projects by `Scenarios`, `Roles`, `Product`, and `Industries`. 
- Expand and collapse each filter option.
- Values for each of the filter is from Microsoft taxonomies.
- Sort By: `Newest`, `Oldest`, `Most Votes`, `Least Votes`, `Most Comments`, `Least Comments`
- Multi select of values in each of the filter `Scenarios`, `Products`, `Roles`, and `Industries` options.
- Create Project – A “Initiate Project Creation” window pops up for Community User to input details about the project with the following:

   - `Project Name`
  - `Project Motivation`
  - `Industry`
  - `Scenario`
  - `Products`
  - `Tagline`
  - `Keywords`
  - `Is this project open for others to join?`
  - `Is this project sponsored?`
  - `Do you have any associated ideas from Chrysalis?`

- The project information is then shared with Chrysalis Admin via email to create the project in Hackbox.

- Created Project will show up in Chrysalis platform in next refresh cycle (currently it is 4 hours refresh cycle)

| **Collapsed view [Default]** | **Expanded View**      |
|------------------------------|------------------------|
| `Title of the Project`       | `Title of the Project` |
| `Votes`                      | `Votes`                |
| `Comments`                   | `Comments`             |
| `Views icon`                 | `Views icon`           |
| `Shared icon`                | `Shared icon`          |
| `Favorite icon`              | `Favorite icon`        |
| `Tagline`                    | `Tageline`             |
| `Team`                       | `Team`                 |
| `Project Keywords`           | `Created by`           |
|                              | `Sponsored by`         |
|                              | `Project Keywords`     |
- Trending Projects – displays up to 6 projects on the right side of the page with an option to scroll down to view more.  Current logic for Trending Projects is based on the most votes and most comments.
- Project Team members will have the option to Associate Ideas and Assets.
- Project Team members will have the option De-associate Ideas or Assets.
- Project Team members will see the “Need Volunteer” option and can request for Volunteers to contribute to their projects.
- Users can see Projects which are looking for volunteers and join such projects.
- Project Team members can inactivate or cancel “Need Volunteer” option 
- Option to view 4, 8, 16, 32 Projects per page.

# Assets

- Explore Assets
- Filter Assets by `Asset Type`, `Scenarios`, and `Products`
- Multi select of `Asset Type`, `Scenario` and `Products` in the filter’s options either individually or together.
- Display Contributing Projects for each of the Assets.
- Register Asset usage of the asset in other Chrysalis Projects along with Comments
- Display Asset Usage for each of the Assets.
- Sort By: `Newest`, `Oldest`, `Most Votes`, `Least Votes`, `Most Comments`, `Least Comments`
- Each Asset will require the following mandatory attributes:
  - `Asset Title`
  - `Asset Type`
  - `Asset URL` 
  - `Description`
  - `Products`
  - `Scenarios`
  - `Tags`

| **Collapsed view [Default]** | **Expanded View**    |
|------------------------------|----------------------|
| `Title of the Asset`         | `Title of the Asset` |
| `Votes`                      | `Votes`              |
| `Comments`                   | `Comments`           |
| `Shortened Description`      | `Full Description`   |
| `Scenarios`                  | `Scenarios`          |
| `Asset Type`                 | `Asset Type`         |
| `Last updated date`          | `Product`            |
|                              | `Tags`               |
|                              | `Published by`       |
|                              | `Asset URL`          |
|                              | `Status`             |
|                              | `Last updated date`  |

- Supports following Asset types in Add Asset
  - `Code Artifact` – supports reading of .yml file to auto populate the attributes. 
  - `Document Template`
  - `Guidance`
  - `Others`
  - `Tool`
- Ability for users to add comments to Published assets.
- Ability for users to vote for the Published assets.
- Option to view 4, 8, 16, 32 Assets per page.

# Insights

- Ideas Report 

- Projects Report 

- Assets Report 

- Contribution by My Team

- End to End lifecyle 
