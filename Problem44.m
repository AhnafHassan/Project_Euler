% Project Euler- Problem 44: Script prepared by Ahnaf Rashik Hassan (ahnaf.hassan0@gmail.com)
clear all; close all; clc;
Pentagonal= 1; n= 2;             inner_flag= 0; % Status of addition pentagonal
while(1)
    New= n*(3*n-1)/2;
    Dummy= abs(Pentagonal-New);
    for j=1:length(Dummy)
        Index= find(Pentagonal==Dummy(j));
        if length(Index)>0 % Difference is pentagonal. Now find if the addition is pentagonal as well.
            D= abs(Pentagonal(Index) - New);
            Sum= Pentagonal(Index) + New;
            m= n+1;
            while(1)
                NewPenta= m*(3*m-1)/2;
                if NewPenta==Sum
                    inner_flag= 1; % Found answer
                    disp(D);
                    break;
                end
                if NewPenta>Sum
                    break;
                end
                m= m+1;
            end
            if inner_flag==1
                break;
            end
        end
        if inner_flag==1
            break;
        end
    end
    if inner_flag==1
        break;
    end
    Pentagonal= [Pentagonal New];
    n= n+1;
end













