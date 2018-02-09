syms lamda;
mu=0.0433;
k=2*lamda/((ceil(lamda/mu-0.5)+1)*(ceil(lamda/mu-0.5)-1));
ezplot(k,[0.12,0.7]);
xlabel('\lambda(s^-^1)');
ylabel('dL_q/dt');
