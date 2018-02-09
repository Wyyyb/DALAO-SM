X=zeros(1,10000);
Y=zeros(1,10000);
dx=0.00007;
%draw figure 1 to show the relation between s and lamda on
%condition that 'u=0.0433'
u=0.0433;
for i=1:10000
    X(i)=i*dx;
    Y(i)=ceil(i*dx/u-0.5)+1;
end
subplot(1,2,1);
plot(X,Y);
grid on;
xlabel('\lambda(s^-^1)');
ylabel('s');
title('1. u=0.0433');

%draw figure 1 to show the relation between s and lamda on
%condition that 'u=0.0359'
u=0.0359;
for i=1:10000
    X(i)=i*dx;
    Y(i)=ceil(i*dx/u-0.5)+1;
end
subplot(1,2,2);
plot(X,Y);
grid on;
xlabel('\lambda(s^-^1)');
ylabel('s');
title('2. u=0.0359');