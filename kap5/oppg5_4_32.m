A =[-7 -48 -16;1 14 6;-3 -45 -19];
b1 = [-3;1;-3]; b2 = [-2;1;-3;]; b3 = [3;-1;0];
P = [b1 b2 b3];
P1 = inv(P);
B = P1*A*P