
%Objective function to be minimized
c = [108 94 99 92.7 96.6 95.9 92.9 110 104 101 107 102 95.2 0 0 0 0 0]';

%Inequality equations
A = -[10 7 8 6 7 6 5 10 8 6 10 7 100 -1 0 0 0 0;
    10 7 8 6 7 6 5 10 8 6 110 107 0 1.02 -1 0 0 0;
    10 7 8 6 7 6 5 110 108 106 0 0 0 0 1.03 -1 0 0;
    10 7 8 6 7 106 105 0 0 0 0 0 0 0 0 1.04 -1 0;
    10 7 8 106 107 0 0 0 0 0 0 0 0 0 0 0 1.05 -1;
    110 107 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.06;
    -81 -70.5 -74.25 -69.525 -72.45 -71.925 23.225 27.5 26 25.25 26.75 25.5 23.8 0 0 0 0 0];
b = -[500 200 800 400 700 900 0];


Aeq = [];
beq = [];

%Setting limits to all variables
lb = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]';
ub = [inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf]';

%Running the optimizer
[x,fval] = linprog(c,A,b,Aeq,beq,lb,ub);

