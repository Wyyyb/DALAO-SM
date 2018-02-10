syms P;
syms M;
syms E;
syms S;
Factors=[P; M; E; S];
K=[1/2 0 1/3 1/6; 0 2/3 1/6 1/6; 1/2 0 3/8 1/8; 1/4 1/4 1/4 1/4];
Kc=[1/8 1/4 1/8 1/2; 0 1/4 0 3/4; 1/4 1/4 1/4 1/4; 1/3 1/3 0 1/3];
syms T;
syms R;
syms L;
syms D;
C=[T; R; L; D];
target=sum(Factors);
for i=1:5
    Factors=K*Factors+Kc*C;
end
Result=sum(Factors)-target;
Result=vpa(Result);
collect(Result, findsym(Result))
