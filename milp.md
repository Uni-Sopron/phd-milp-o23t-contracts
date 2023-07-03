# MILP Exercise

## Frame the Problem

We have a Software Development company and we are working with 7 contractors at the same time. They have different skillsets and specializations:

|Name |Area of Expertise|Hourly Rate (USD)|Max. LOC|
|-----|-----------------|-----------------|--------|
|Jason|Rust, Go         |120              |14000   |
|Tom  |JS               |90               |12000   |
|Sarah|Python, C++      |100              |12500   |
|Chris|Python, Java     |150              |25000   |
|Julia|Rust, Python     |130              |20000   |
|Bruce|C, C++           |75               |15000   |
|David|C, Go, Java      |130              |20000   |

We have 3 projects with the following details:

|Project|Est. Lines of Code|Project Objectives                       |
|-------|------------------|-----------------------------------------|
|A      |15000             |Create fast and lightweight CLI tools    |
|B      |17500             |Develop neural networks                  |
|C      |30000             |Web development                          |
|D      |85000             |Data pipelines                           |

One line of code in a project can be developed at different pace by each developer due to their different area of expertise - the values shows how many minutes a developer needs for one line of code in the given project:

|         |A    |B    |C    |D    |
|---------|-----|-----|-----|-----|
|Jason    |10   |25   |15   |35   |
|Tom      |20   |120  |10   |35   |
|Sarah    |20   |10   |30   |15   |
|Chris    |50   |25   |15   |15   |
|Julia    |10   |15   |40   |20   |
|Bruce    |20   |40   |120  |20   |
|David    |10   |100  |15   |15   |

Our aim is to <b>minimize the cost of our projects</b> considering the pace (hour/ticket) and hourly rates of our staff.

## Constraints

### For Contractors
- x<sub>JA</sub> + x<sub>JB</sub> + x<sub>JC</sub> + x<sub>JD</sub> <= 14.000
- x<sub>TA</sub> + x<sub>TB</sub> + x<sub>TC</sub> + x<sub>TD</sub> <= 12.000
- x<sub>SA</sub> + x<sub>SB</sub> + x<sub>SC</sub> + x<sub>SD</sub> <= 12.500
- x<sub>CA</sub> + x<sub>CB</sub> + x<sub>CC</sub> + x<sub>CD</sub> <= 25.000
- x<sub>JuA</sub> + x<sub>JuB</sub> + x<sub>JuC</sub> + x<sub>JuD</sub> <= 20.000
- x<sub>BA</sub> + x<sub>BB</sub> + x<sub>BC</sub> + x<sub>BD</sub> <= 15.000
- x<sub>DA</sub> + x<sub>DB</sub> + x<sub>DC</sub> + x<sub>DD</sub> <= 20.000

### For Projects
- x<sub>JA</sub> + x<sub>TA</sub> + x<sub>SA</sub> + x<sub>CA</sub> + x<sub>JuA</sub> + x<sub>BA</sub> + x<sub>DA</sub> >= 15.000
- x<sub>JB</sub> + x<sub>TB</sub> + x<sub>SB</sub> + x<sub>CB</sub> + x<sub>JuB</sub> + x<sub>BB</sub> + x<sub>DB</sub> >= 17.500
- x<sub>JC</sub> + x<sub>TC</sub> + x<sub>SC</sub> + x<sub>CC</sub> + x<sub>JuC</sub> + x<sub>BC</sub> + x<sub>DC</sub> >= 30.000
- x<sub>JD</sub> + x<sub>TD</sub> + x<sub>SD</sub> + x<sub>CD</sub> + x<sub>JuD</sub> + x<sub>BD</sub> + x<sub>DD</sub> >= 85.000

## Function
x<sub>JA</sub>\*10/60\*120 + x<sub>JB</sub>\*25/60\*120 + x<sub>JC</sub>\*15/60\*120 + x<sub>JD</sub>\*35/60\*120 + 
x<sub>TA</sub>\*20/60\*90 + x<sub>TB</sub>\*120/60\*90 + x<sub>TC</sub>\*10/60\*90 + x<sub>TD</sub>\*35/60\*90 + 
x<sub>SA</sub>\*20/60\*100 + x<sub>SB</sub>\*10/60\*100 + x<sub>SC</sub>\*30/60\*100 + x<sub>SD</sub>\*15/60\*100 + 
x<sub>CA</sub>\*50/60\*150 + x<sub>CB</sub>\*25/60\*150 + x<sub>CC</sub>\*15/60\*150 + x<sub>CD</sub>\*15/60\*150 + 
x<sub>JuA</sub>\*10/60\*130 + x<sub>JuB</sub>\*15/60\*130 + x<sub>JuC</sub>\*40/60\*130 + x<sub>JuD</sub>\*20/60\*130 + 
x<sub>BA</sub>\*20/60\*75 + x<sub>BB</sub>\*40/60\*75 + x<sub>BC</sub>\*120/60\*75 + x<sub>BD</sub>\*20/60\*75 + 
x<sub>DA</sub>\*10/60\*130 + x<sub>DB</sub>\*100/60\*130 + x<sub>DC</sub>\*15/60\*130 + x<sub>DD</sub>\*15/60\*130 -> MIN