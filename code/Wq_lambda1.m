X=zeros(1,2000);
Y=zeros(1,2000);

%Figure 1:Assign ceil(1/u*lamda) to s.
%Calculate the average wait time Wq 
for i=1:2000 
    k=i+1;
    lamda=k*0.00032;  
    s=ceil(1/0.0433*(lamda));
    X(i)=lamda;
    u=0.0433;         %service speed
    temp=0;
    rou=lamda/(s*u);  %service intensity
    for k=0:1:s-1
        temp=temp+power(s*rou,k)/factorial(k);
    end
    temp=temp+power(s*rou,s)/(factorial(s)*(1-rou));
    Po=1/temp;
    Lq=(power(s*rou,s)*rou/(factorial(s)*power(1-rou,2)))*Po;
    Wq=Lq/lamda;
    Y(i)=Wq;
end
subplot(2,2,1);
plot(X,Y);
xlabel('\lambda(s^-^1)');
ylabel('W_q(s)');
title('Assign ceil(\lambda/u) to s.');

%Figure 2:Assign ceil(1/u*lamda-0.5) to s.
%Calculate the average wait time Wq 
for i=1:2000 
    k=i+1;
    lamda=k*0.00032;
    s=ceil(1/0.0433*(lamda-0.0433/2));
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
subplot(2,2,2);
plot(X,Y);
xlabel('\lambda(s^-^1)');
ylabel('W_q(s)');
title('Assign ceil(\lambda/u-0.5) to s.');

%Figure 3:Assign ceil(1/u*lamda)+1 to s.
%Calculate the average wait time Wq 
for i=1:2000 
    k=i+1;
    lamda=k*0.00032;
    s=ceil(1/0.0433*(lamda))+1;
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
subplot(2,2,3);
plot(X,Y);
xlabel('\lambda(s^-^1)');
ylabel('W_q(s)');
title('Assign ceil(\lambda/u)+1 to s.');

%Figure 4:Assign ceil(1/u*lamda-0.5)+1 to s.
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
subplot(2,2,4);
plot(X,Y);
xlabel('\lambda(s^-^1)');
ylabel('W_q(s)');
title('Assign ceil(\lambda/u-0.5)+1 to s.');


