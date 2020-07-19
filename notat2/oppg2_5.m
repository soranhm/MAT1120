% i)

M = [1 -2 4 -8;1 3 9 27;1 1 1 1;1 0 0 0];
xb = [0;1;0;1];
x = M \ xb;

% ii)
t = linspace(-3,3);
p = 1 - 0.9 * t - 0.3 * t.^2 + 0.2 * t.^3;
plot(t,p);

% iii)
format rat
T1 = inv(M)