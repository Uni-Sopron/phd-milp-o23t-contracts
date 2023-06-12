# MILP Exercise

## Frame the Problem

We have a Software Development company and we are working with 7 contractors at the same time. They have different skillsets and specializations:

|Name |Area of Expertise|Hourly Rate (USD)|Max. Billable hours|
|-----|-----------------|-----------------|-------------------|
|Jason|Rust, Go         |120              |4000               |
|Tom  |JS               |90               |2000               |
|Sarah|Python, C++      |100              |2500               |
|Chris|Python, Java     |150              |2500               |
|Julia|Rust, Python     |130              |2000               |
|Bruce|C, C++           |75               |1500               |
|David|C, Go, Java      |130              |2000               |

We have 3 projects with the following details:

|Project|Billable Hours|Project Objectives                       |
|-------|--------------|-----------------------------------------|
|A      |3000          |Create fast and lightweight CLI tools    |
|B      |2500          |Develop neural networks                  |
|C      |1500          |Web development                          |
|D      |2000          |Data pipelines                           |

One Jira ticket in a project can be developed at different pace by each developer due to their different area of expertise:

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

## Example Solution (manually)
- Jason -> Project A: 3.000 hrs
- Sarah -> Project B: 2.000 hrs
- Julia -> Project B: 500 hrs
- Tom -> Project C: 1.500 hrs
- Chris -> Project D: 1.500 hrs
- David -> Project D: 500 hrs

### Result
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

## Constraints

### For Contractors
- x<sub>JA</sub> + x<sub>JB</sub> + x<sub>JC</sub> + x<sub>JD</sub> <= 4.000
- x<sub>TA</sub> + x<sub>TB</sub> + x<sub>TC</sub> + x<sub>TD</sub> <= 2.000
- x<sub>SA</sub> + x<sub>SB</sub> + x<sub>SC</sub> + x<sub>SD</sub> <= 2.500
- x<sub>CA</sub> + x<sub>CB</sub> + x<sub>CC</sub> + x<sub>CD</sub> <= 2.500
- x<sub>JuA</sub> + x<sub>JuB</sub> + x<sub>JuC</sub> + x<sub>JuD</sub> <= 2.000
- x<sub>BA</sub> + x<sub>BB</sub> + x<sub>BC</sub> + x<sub>BD</sub> <= 1.500
- x<sub>DA</sub> + x<sub>DB</sub> + x<sub>DC</sub> + x<sub>DD</sub> <= 2.000

### For Projects
- x<sub>JA</sub> + x<sub>TA</sub> + x<sub>SA</sub> + x<sub>CA</sub> + x<sub>JuA</sub> + x<sub>BA</sub> + x<sub>DA</sub> >= 3.000
- x<sub>JB</sub> + x<sub>TB</sub> + x<sub>SB</sub> + x<sub>CB</sub> + x<sub>JuB</sub> + x<sub>BB</sub> + x<sub>DB</sub> >= 2.500
- x<sub>JC</sub> + x<sub>TC</sub> + x<sub>SC</sub> + x<sub>CC</sub> + x<sub>JuC</sub> + x<sub>BC</sub> + x<sub>DC</sub> >= 1.500
- x<sub>JD</sub> + x<sub>TD</sub> + x<sub>SD</sub> + x<sub>CD</sub> + x<sub>JuD</sub> + x<sub>BD</sub> + x<sub>DD</sub> >= 2.000

## Function
x<sub>JA</sub>\*10\*120 + x<sub>JB</sub>\*25\*120 + x<sub>JC</sub>\*15\*120 + x<sub>JD</sub>\*35\*120 + 
x<sub>TA</sub>\*20\*90 + x<sub>TB</sub>\*120\*90 + x<sub>TC</sub>\*10\*90 + x<sub>TD</sub>\*35\*90 + 
x<sub>SA</sub>\*20\*100 + x<sub>SB</sub>\*10\*100 + x<sub>SC</sub>\*30\*100 + x<sub>SD</sub>\*15\*100 + 
x<sub>CA</sub>\*50\*150 + x<sub>CB</sub>\*25\*150 + x<sub>CC</sub>\*15\*150 + x<sub>CD</sub>\*15\*150 + 
x<sub>JuA</sub>\*10\*130 + x<sub>JuB</sub>\*15\*130 + x<sub>JuC</sub>\*40\*130 + x<sub>JuD</sub>\*20\*130 + 
x<sub>BA</sub>\*20\*75 + x<sub>BB</sub>\*40\*75 + x<sub>BC</sub>\*120\*75 + x<sub>BD</sub>\*20\*75 + 
x<sub>DA</sub>\*10\*130 + x<sub>DB</sub>\*100\*130 + x<sub>DC</sub>\*15\*130 + x<sub>DD</sub>\*15\*130 -> MIN