u=0.0433;
X=zeros(1,10000);
Y=zeros(1,10000);
dx=0.00007;           %set the micro element as dx=0.00007

%draw figure 1 to show the relation between s and lamda on
%condition that 's=ceil(lamda/u)'
for i=1:10000
    X(i)=i*dx;
    Y(i)=ceil(i*dx/u);
end
subplot(2,2,1);
plot(X,Y);
grid on;
xlabel('\lambda(s^-^1)');
ylabel('s');
title('1. Assign ceil(\lambda/u) to s.');

%draw figure 2 to show the relation between s and lamda on
%condition that 's=ceil(lamda/u-0.5)'
for i=1:10000
    X(i)=i*dx;
    Y(i)=ceil(i*dx/u-0.5);
end
subplot(2,2,2);
plot(X,Y);
grid on;
xlabel('\lambda(s^-^1)');
ylabel('s');
title('2. Assign ceil(\lambda/u-0.5) to s.');

%draw figure 3 to show the relation between s and lamda on
%condition that 's=ceil(lamda/u)+1'
for i=1:10000
    X(i)=i*dx;
    Y(i)=ceil(i*dx/u)+1;
end
subplot(2,2,3);
plot(X,Y);
grid on;
xlabel('\lambda(s^-^1)');
ylabel('s');
title('3. Assign ceil(\lambda/u)+1 to s.');

%draw figure 4 to show the relation between s and lamda on
%condition that 's=ceil(lamda/u-0.5)+1'
for i=1:10000
    X(i)=i*dx;
    Y(i)=ceil(i*dx/u-0.5)+1;
end
subplot(2,2,4);
plot(X,Y);
grid on;
xlabel('\lambda(s^-^1)');
ylabel('s');
title('4. Assign ceil(\lambda/u-0.5)+1 to s.');

