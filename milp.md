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
- Jason -> Project A: 3.000 hrs
- Sarah -> Project B: 2.000 hrs
- Julia -> Project B: 500 hrs
- Tom -> Project C: 1.500 hrs
- Chris -> Project D: 1.500 hrs
- David -> Project D: 500 hrs

Result:
---
3.000\*120 + 2.000\*100 + 500\*130 + 1.500\*90 + 1.500\*150 + 500\*130 = 1.050.000

- x<sub>JA</sub> = 3.000
- x<sub>JB</sub> = 0
- x<sub>JC</sub> = 0
- x<sub>JD</sub> = 0

- x<sub>TA</sub> = 0
- x<sub>TB</sub> = 0
- x<sub>TC</sub> = 1.500
- x<sub>TD</sub> = 0

- x<sub>SA</sub> = 0
- x<sub>SB</sub> = 2.000
- x<sub>SC</sub> = 0
- x<sub>SD</sub> = 0

- x<sub>CA</sub> = 0
- x<sub>CB</sub> = 0
- x<sub>CC</sub> = 0
- x<sub>CD</sub> = 1.500

- x<sub>JuA</sub> = 0
- x<sub>JuB</sub> = 500
- x<sub>JuC</sub> = 0
- x<sub>JuD</sub> = 0

- x<sub>BA</sub> = 0
- x<sub>BB</sub> = 0
- x<sub>BC</sub> = 0
- x<sub>BD</sub> = 0

- x<sub>DA</sub> = 0
- x<sub>DB</sub> = 0
- x<sub>DC</sub> = 0
- x<sub>DD</sub> = 500
