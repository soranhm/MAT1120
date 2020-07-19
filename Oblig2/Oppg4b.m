% tilfeldige tall mellom 1-256 i en 256x256 matrise
B = round(255 * rand(256, 256));
[U,S2,V] = svd(B);
y = diag(S2);
% gj?r det samma som i 3c) og bruker svdApprox
B1 = svdApprox(B,32);
imageview(B1)

A = imread('mm.gif','gif');
A = double(A);
[U,S,V] = svd(A);
x = 1:256;
y2 = diag(S); % siden sigma er diagonalmatrise
plot(x,y,'r',x,y2,'b')   % plotter sigma fra A og B sammen
