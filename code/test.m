function Wq=test(lamda)
syms temp;  %a intermediate variables to calculate Lq
syms rou;   %the service intensity
syms Po;    %a intermediate variables to calculate Lq
syms Lq;    %the average length of the queues
syms Wq;    %the average wait time of the passengers
u=0.0433;
temp=0;
s=2;
%the relations following are from queuing theory
rou=lamda/(s*u);
for k=0:1:s-1
    temp=temp+power(s*rou,k)/factorial(k);
end
temp=temp+power(s*rou,s)/(factorial(s)*(1-rou));
Po=1/temp;
Lq=(power(s*rou,s)*rou/(factorial(s)*power(1-rou,2)))*Po;
Wq=Lq/lamda-60;
  

