%factors1=[7.20; 9.25; 8.45; 10]; %Iraq
%factors1=[9.65; 9.00; 7.80; 9.70]; %Congo
%factors1=[8.00; 8.6; 8.65; 7.70]; %Haiti
factors1=[9.37; 9; 8.87; 9.5]; %Central African Republic
factors=factors1;
K=[1/2 0 1/3 1/6; 0 2/3 1/6 1/6; 1/2 0 3/8 1/8; 1/4 1/4 1/4 1/4];
KC=[1/8; 0; 1/2; 1/4];
C=0.5;
year=5;
X=zeros(year);
Y1=zeros(year);

for i=1:year
    X(i)=i;
    Y1(i)=sum(factors);
    factors=K*factors;    
end    
p1=plot(X, Y1, 'r');
axis([1 year 36.5 37]);

xlabel('year');
ylabel('fragility');
legend('without climate change influence');
%grid();

