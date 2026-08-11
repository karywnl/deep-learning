x = [2.5, -4.3];
t = [0, 1, 0];
eta = 0.9;

Wh = [-1.6 0.5 1.3 -0.3; 0.3 -0.7 0.8 1.4];
bh = [0.2 -0.4 0.6 -0.9];
Wo = [0.2 0.7 -1.7; -0.5 1.3 2.5; 2.6 -3.2 0.2; -1.6 -2.5 3.2];
bo = [0.1 -0.6 0.7];

h = tanh(x*Wh + bh)
o = 1./(1+exp(-(h*Wo + bo)))
E = 0.5*sum((t-o).^2)

delta_o = (t-o).*o.*(1-o)
delta_h = (delta_o*Wo').*(1-h.^2)

dWo = eta*(h'*delta_o)
dbo = eta*delta_o
dWh = eta*(x'*delta_h)
dbh = eta*delta_h
