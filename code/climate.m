factors=[7.10; 5.90; 5.53; 5.80];
K=[1/2 0 1/3 1/6; 0 2/3 1/6 1/6; 1/2 0 3/8 1/8; 1/4 1/4 1/4 1/4];
KC=[1/8; 0; 1/2; 1/4];
C=0.5;
year=5;
X=zeros(year);
Y1=zeros(year);
Y2=zeros(year);
Y3=zeros(year);


for i=1:year
    X(i)=i;
    Y1(i)=sum(factors);
    factors=K*factors;    
end    
p1=plot(X, Y1, 'r');
axis([1 year 22 30]);
hold on

factors=[7.10; 5.90; 5.53; 5.80];
for i=1:year
%    C=rand(1)*2-1;
    X(i)=i;
    Y2(i)=sum(factors);
    factors=K*factors+KC*C;    
end    
p2=plot(X, Y2, 'g');
axis([1 year 22 30]);
hold on

factors=[7.10; 5.90; 5.53; 5.80];
for i=1:year
%    C=rand(1)*2-1;
    X(i)=i;
    Y3(i)=sum(factors)+C;
    factors=K*factors+KC*C;    
end    
p3=plot(X, Y3, 'b');
axis([1 year 22 30]);
hold off
xlabel('year');
ylabel('fragility');
legend([p1(1), p2(2), p3(3)],'without climate influence','add indirect climate influence','add all climate influence');

