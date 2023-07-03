set Contractors;
param hourly_rate{Contractors} >= 0;
param max_loc{Contractors} >= 0;

set Projects;
param est_loc{Projects} >= 0;

param min_per_loc{Contractors,Projects} >= 0;

var assigned_loc{Contractors,Projects} >= 0;

s.t. Max_loc_upper_bound{c in Contractors}:
    sum{p in Projects} assigned_loc[c,p] <= max_loc[c];

s.t. Demand_must_be_met{p in Projects}:
    sum{c in Contractors} assigned_loc[c,p] >= est_loc[p];

minimize Project_cost:
    sum{c in Contractors, p in Projects} min_per_loc[c,p] * assigned_loc[c,p] * hourly_rate[c]/60;