X=zeros(1,2000);
Y=zeros(1,2000);

%Figure 1:Assign u=0.0433.
%Calculate the average wait time Wq 
for i=1:2000 
    k=i+1;
    lamda=k*0.00032;
    s=ceil(1/0.0433*(lamda-0.0433/2))+1;
    X(i)=lamda;
    u=0.0433;
    temp=0;
    rou=lamda/(s*u);
    for k=0:1:s-1
        temp=temp+power(s*rou,k)/factorial(k);
    end
    temp=temp+power(s*rou,s)/(factorial(s)*(1-rou));
    Po=1/temp;
    Lq=(power(s*rou,s)*rou/(factorial(s)*power(1-rou,2)))*Po;
    Wq=Lq/lamda;
    Y(i)=Wq;
end
subplot(1,2,1);
plot(X,Y);
xlabel('\lambda(s^-^1)');
ylabel('W_q(s)');
title('u=0.0433');

%Figure 2:Assign u=0.0359.
%Calculate the average wait time Wq 
for i=1:2000 
    k=i+1;
    lamda=k*0.00032;
    s=ceil(1/0.0359*(lamda-0.0359/2))+1;
    X(i)=lamda;
    u=0.0359;
    temp=0;
    rou=lamda/(s*u);
    for k=0:1:s-1
        temp=temp+power(s*rou,k)/factorial(k);
    end
    temp=temp+power(s*rou,s)/(factorial(s)*(1-rou));
    Po=1/temp;
    Lq=(power(s*rou,s)*rou/(factorial(s)*power(1-rou,2)))*Po;
    Wq=Lq/lamda;
    Y(i)=Wq;
end
subplot(1,2,2);
plot(X,Y);
xlabel('\lambda(s^-^1)');
ylabel('W_q(s)');
title('u=0.0359');

