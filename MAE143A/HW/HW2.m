syms s

D = (-s - 1)/(3*s + 2);
G = (-3*s-2)/(s^2 + 5*s +4);
R = 1/s;
T = simplify(G*D/(1+G*D));
Y = simplify(T*R);
fraction = partfrac(Y);
