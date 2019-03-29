% Project Euler- Problem 2: Script prepared by Ahnaf Rashik Hassan (ahnaf.hassan0@gmail.com) 
clear all; close all; clc; 
Old= 1; New= 2; Sum= 0; 
while(1)
    if mod(New,2)==0
        Sum= Sum + New;
    end
    Temp= Old; 
    Old= New; 
    New= Old + Temp; 
    if New>4000000
        break;
    end
end
disp(Sum)


















