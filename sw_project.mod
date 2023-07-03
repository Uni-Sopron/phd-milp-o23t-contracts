var Jason_A_project >= 0;
var Jason_B_project >= 0;
var Jason_C_project >= 0;
var Jason_D_project >= 0;

var Tom_A_project >= 0;
var Tom_B_project >= 0;
var Tom_C_project >= 0;
var Tom_D_project >= 0;

var Sarah_A_project >= 0;
var Sarah_B_project >= 0;
var Sarah_C_project >= 0;
var Sarah_D_project >= 0;

var Chris_A_project >= 0;
var Chris_B_project >= 0;
var Chris_C_project >= 0;
var Chris_D_project >= 0;

var Julia_A_project >= 0;
var Julia_B_project >= 0;
var Julia_C_project >= 0;
var Julia_D_project >= 0;

var Bruce_A_project >= 0;
var Bruce_B_project >= 0;
var Bruce_C_project >= 0;
var Bruce_D_project >= 0;

var David_A_project >= 0;
var David_B_project >= 0;
var David_C_project >= 0;
var David_D_project >= 0;

s.t. Jason_LOC:
     Jason_A_project +
     Jason_B_project +
     Jason_C_project + 
     Jason_D_project <= 14000;

s.t. Tom_LOC:
     Tom_A_project +
     Tom_B_project +
     Tom_C_project + 
     Tom_D_project <= 12000;

s.t. Sarah_LOC:
     Sarah_A_project +
     Sarah_B_project +
     Sarah_C_project + 
     Sarah_D_project <= 12500;

s.t. Chris_LOC:
     Chris_A_project +
     Chris_B_project +
     Chris_C_project + 
     Chris_D_project <= 25000;

s.t. Julia_LOC:
     Julia_A_project +
     Julia_B_project +
     Julia_C_project + 
     Julia_D_project <= 20000;

s.t. Bruce_LOC:
     Bruce_A_project +
     Bruce_B_project +
     Bruce_C_project + 
     Bruce_D_project <= 15000;

s.t. David_LOC:
     David_A_project +
     David_B_project +
     David_C_project + 
     David_D_project <= 20000;

s.t. A_project_loc:
     Jason_A_project + 
     Tom_A_project + 
     Sarah_A_project +
     Chris_A_project + 
     Julia_A_project +
     Bruce_A_project + 
     David_A_project >= 15000;

s.t. B_project_loc:
     Jason_B_project + 
     Tom_B_project + 
     Sarah_B_project +
     Chris_B_project + 
     Julia_B_project +
     Bruce_B_project + 
     David_B_project >= 17500;

s.t. C_project_loc:
     Jason_C_project + 
     Tom_C_project + 
     Sarah_C_project +
     Chris_C_project + 
     Julia_C_project +
     Bruce_C_project + 
     David_C_project >= 30000;

s.t. D_project_loc:
     Jason_D_project + 
     Tom_D_project + 
     Sarah_D_project +
     Chris_D_project + 
     Julia_D_project +
     Bruce_D_project + 
     David_D_project >= 20000;

minimize Project_cost :
    Jason_A_project*10/60*120 + Jason_B_project*25/60*120 + Jason_C_project*15/60*120 + Jason_D_project*35/60*120 + 
    Tom_A_project*20/60*90 + Tom_B_project*120/60*90 + Tom_C_project*10/60*90 + Tom_D_project*35/60*90 + 
    Sarah_A_project*20/60*100 + Sarah_B_project*10/60*100 + Sarah_C_project*30/60*100 + Sarah_D_project*15/60*100 + 
    Chris_A_project*50/60*150 + Chris_B_project*25/60*150 + Chris_C_project*15/60*150 + Chris_D_project*15/60*150 + 
    Julia_A_project*10/60*130 + Julia_B_project*15/60*130 + Julia_C_project*40/60*130 + Julia_D_project*20/60*130 + 
    Bruce_A_project*20/60*75 + Bruce_B_project*40/60*75 + Bruce_C_project*120/60*75 + Bruce_D_project*20/60*75 + 
    David_A_project*10/60*130 + David_B_project*100/60*130 + David_C_project*15/60*130 + David_D_project*15/60*130;