factors1=[9.85; 9; 8.87; 9.5]; %Central African Republic
factors=factors1;
K=[1/2 0 1/3 1/6; 0 2/3 1/6 1/6; 1/2 0 3/8 1/8; 1/4 1/4 1/4 1/4];
year=5;
delta=0.02;

Y=zeros(100);

for i=1:100
    factors=factors1;
    factors(1)=factors(1)-delta*i;
    target=sum(factors);
    for j=1:year
       factors=K*factors;     
    end    
    Y(i)=abs(sum(factors)-target);
end

[v, i]=min(Y);
v(1)
P=factors1(1)-delta*i;
P(1)
