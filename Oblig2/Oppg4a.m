A = imread('mm.gif','gif');
A = double(A);
[U,S,V] = svd(A);
x = 1:256;
y = diag(S); % siden sigma er diagonalmatrise
plot(x,y)   % plotter 1-256 mot sigmaene fra A
