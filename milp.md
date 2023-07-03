# MILP Exercise

## Frame the Problem

We have a Software Development company and we are working with 7 contractors at the same time.

|Name |Hourly Rate (USD/hour)|Max. LOC|
|-----|----------------------|--------|
|Jason|120                   |14000   |
|Tom  |90                    |12000   |
|Sarah|100                   |12500   |
|Chris|150                   |25000   |
|Julia|130                   |20000   |
|Bruce|75                    |15000   |
|David|130                   |20000   |

We have 3 projects with the following details:

|Project|Est. LOC|
|-------|--------|
|A      |15000   |
|B      |17500   |
|C      |30000   |
|D      |85000   |

One line of code in a project can be developed at different pace by each developer due to their different area of expertise - the values shows how many minutes a developer needs for one line of code in the given project:

|         |A (min/LOC)   |B (min/LOC)  |C (min/LOC)   |D (min/LOC)   |
|---------|--------------|-------------|--------------|--------------|
|Jason    |10            |25           |15            |35            |
|Tom      |20            |120          |10            |35            |
|Sarah    |20            |10           |30            |15            |
|Chris    |50            |25           |15            |15            |
|Julia    |10            |15           |40            |20            |
|Bruce    |20            |40           |120           |20            |
|David    |10            |100          |15            |15            |
         
Our aim is to <b>minimize the cost of our projects</b> considering the pace (min/LOC) and hourly rates of our staff.

## Constraints

### For Contractors
- x<sub>JA</sub> LOC + x<sub>JB</sub> LOC + x<sub>JC</sub> LOC + x<sub>JD</sub> LOC <= 14.000 LOC
- x<sub>TA</sub> LOC + x<sub>TB</sub> LOC + x<sub>TC</sub> LOC + x<sub>TD</sub> LOC <= 12.000 LOC
- x<sub>SA</sub> LOC + x<sub>SB</sub> LOC + x<sub>SC</sub> LOC + x<sub>SD</sub> LOC <= 12.500 LOC
- x<sub>CA</sub> LOC + x<sub>CB</sub> LOC + x<sub>CC</sub> LOC + x<sub>CD</sub> LOC <= 25.000 LOC
- x<sub>JuA</sub> LOC + x<sub>JuB</sub> LOC + x<sub>JuC</sub> LOC + x<sub>JuD</sub> LOC <= 20.000 LOC
- x<sub>BA</sub> LOC + x<sub>BB</sub> LOC + x<sub>BC</sub> LOC + x<sub>BD</sub> LOC <= 15.000 LOC
- x<sub>DA</sub> LOC + x<sub>DB</sub> LOC + x<sub>DC</sub> LOC + x<sub>DD</sub> LOC <= 20.000 LOC

### For Projects
- x<sub>JA</sub> LOC + x<sub>TA</sub> LOC + x<sub>SA</sub> LOC + x<sub>CA</sub> LOC + x<sub>JuA</sub> LOC + x<sub>BA</sub> LOC + x<sub>DA</sub> LOC >= 15.000 LOC
- x<sub>JB</sub> LOC + x<sub>TB</sub> LOC + x<sub>SB</sub> LOC + x<sub>CB</sub> LOC + x<sub>JuB</sub> LOC + x<sub>BB</sub> LOC + x<sub>DB</sub> LOC >= 17.500 LOC
- x<sub>JC</sub> LOC + x<sub>TC</sub> LOC + x<sub>SC</sub> LOC + x<sub>CC</sub> LOC + x<sub>JuC</sub> LOC + x<sub>BC</sub> LOC + x<sub>DC</sub> LOC >= 30.000 LOC
- x<sub>JD</sub> LOC + x<sub>TD</sub> LOC + x<sub>SD</sub> LOC + x<sub>CD</sub> LOC + x<sub>JuD</sub> LOC + x<sub>BD</sub> LOC + x<sub>DD</sub> LOC >= 85.000 LOC

## Function
x<sub>JA</sub>\*10 min/LOC /60 min \*120 USD/hour  + x<sub>JB</sub>\*25 min/LOC /60 min \*120 USD/hour  + x<sub>JC</sub>\*15 min/LOC /60 min \*120 USD/hour  + x<sub>JD</sub>\*35 min/LOC /60 min \*120 USD/hour  + 
x<sub>TA</sub>\*20 min/LOC /60 min \*90 USD/hour  + x<sub>TB</sub>\*120 min/LOC /60 min \*90 USD/hour  + x<sub>TC</sub>\*10 min/LOC /60 min \*90 USD/hour  + x<sub>TD</sub>\*35 min/LOC /60 min \*90 USD/hour  + 
x<sub>SA</sub>\*20 min/LOC /60 min \*100 USD/hour  + x<sub>SB</sub>\*10 min/LOC /60 min \*100 USD/hour  + x<sub>SC</sub>\*30 min/LOC /60 min \*100 USD/hour  + x<sub>SD</sub>\*15 min/LOC /60 min \*100 USD/hour  + 
x<sub>CA</sub>\*50 min/LOC /60 min \*150 USD/hour  + x<sub>CB</sub>\*25 min/LOC /60 min \*150 USD/hour  + x<sub>CC</sub>\*15 min/LOC /60 min \*150 USD/hour  + x<sub>CD</sub>\*15 min/LOC /60 min \*150 USD/hour  + 
x<sub>JuA</sub>\*10 min/LOC /60 min \*130 USD/hour  + x<sub>JuB</sub>\*15 min/LOC /60 min \*130 USD/hour  + x<sub>JuC</sub>\*40 min/LOC /60 min \*130 USD/hour  + x<sub>JuD</sub>\*20 min/LOC /60 min \*130 USD/hour  + 
x<sub>BA</sub>\*20 min/LOC /60 min \*75 USD/hour  + x<sub>BB</sub>\*40 min/LOC /60 min \*75 USD/hour  + x<sub>BC</sub>\*120 min/LOC /60 min \*75 USD/hour  + x<sub>BD</sub>\*20 min/LOC /60 min \*75 USD/hour  + 
x<sub>DA</sub>\*10 min/LOC /60 min \*130 USD/hour  + x<sub>DB</sub>\*100 min/LOC /60 min \*130 USD/hour  + x<sub>DC</sub>\*15 min/LOC /60 min \*130 USD/hour  + x<sub>DD</sub>\*15 min/LOC /60 min \*130 -> MIN