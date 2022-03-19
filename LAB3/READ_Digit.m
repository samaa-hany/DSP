function [ Digit ] = READ_Digit( F )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Digits=['1','2','3','4','5','6','7','8','9','*','0','#'];
Digits_Map=[697,697,697,770,770,770,852,852,852,941,941,941;
    1209,1336,1477,1209,1336,1477,1209,1336,1477,1209,1336,1477];  

Final=[min(F);max(F)];
F=repmat(Final,1,12);
distance = abs(F-Digits_Map);
L = sum(distance);
[dist_mod,index] = (min(L));
Digit = Digits(index);
end

