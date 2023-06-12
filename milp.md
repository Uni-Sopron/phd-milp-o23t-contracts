# MILP Exercise

## Frame the Problem

We have a Software Development company and we are working with 7 contractors at the same time. They have different skillsets and specializations:

|Name |Area of Expertise|Hourly Rate (USD)|
|-----|-----------------|-----------------|
|Jason|Rust, Go         |120              |
|Tom  |JS               |90               |
|Sarah|Python, C++      |100              |
|Chris|Python, Java     |150              |
|Julia|Rust, Python     |130              |
|Bruce|C, C++           |75               |
|David|C, Go, Java      |130              |

We have 3 projects with the following budget:

|Project|Budget    |Project Objectives                       |
|-------|----------|-----------------------------------------|
|A      |75000     |Create fast and lightweight CLI tools    |
|B      |250000    |Develop neural networks                  |
|C      |120000    |Web development                          |
|D      |100000    |Data pipelines                           |

One Jira ticket in a project can be developed at different pace by each developer due to their different are of expertise:

|         |A    |B    |C    |D    |
|---------|-----|-----|-----|-----|
|Jason    |10   |25   |15   |35   |
|Tom      |20   |120  |10   |35   |
|Sarah    |20   |10   |30   |15   |
|Chris    |50   |25   |15   |15   |
|Julia    |10   |15   |40   |20   |
|Bruce    |20   |40   |120  |20   |
|David    |10   |100  |15   |15   |

Our aim is to <b>minimize the cost of our projects</b> considering the experience/knowledge and hourly rates of our staff.


