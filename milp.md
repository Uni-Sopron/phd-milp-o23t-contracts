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

We have 3 projects with the following details:

|Project|Billable Hours|Project Objectives                       |
|-------|--------------|-----------------------------------------|
|A      |3000          |Create fast and lightweight CLI tools    |
|B      |2500          |Develop neural networks                  |
|C      |1500          |Web development                          |
|D      |2000          |Data pipelines                           |

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

Example Solution (manually):
---
- Jason -> Project A: 3000 hrs
- Sarah -> Project B: 2000 hrs
- Julia -> Project B: 500 hrs
- Tom -> Project C: 1500 hrs
- Chris -> Project D: 1500 hrs
- David -> Project D: 500 hrs

Result:
---
3000\*120 + 2000\*100 + 500\*130 + 1500\*90 + 1500\*150 + 500\*130 = 1.050.000

- x<sub>JA</sub> = 3000
- x<sub>JB</sub> = 0
- x<sub>JC</sub> = 0
- x<sub>JD</sub> = 0
