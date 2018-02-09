%show the relationbetween fomax and NL/NP 
uA=0.0877;     %Mathematical expectation of the number of Pre-Check 
               %passengers per unit time entering the entrance
               
uB=0.0349;     %Mathematical expectation of the number of regular-check
               %passengers per unit time entering the entrance
               
NP=2;          %set the number of Pre-Check entrance as 2
NL=zeros(1,28);
Y=zeros(1,28);
for i=1:28     
    NL(i)=i;
    Y(i)=min(4*NP*uA,NL(i)*uB);%specific derivation of the function relation
                               %is at section '3.4 Current process
                               %analysis' in the paper
end
plot(NL/NP,Y);%draw the relation curve of 'fomax' and 'NL/NP'
xlabel('NL/NP');
ylabel(' f_o_m_a_x£¨s^-^1£©');


