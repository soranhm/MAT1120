A = imread('mm.gif','gif');
k1 = 8; k2 = 32;
A1 = svdApprox(A,k1); % setter inn matrisen og k i funksjonen svdApprox
A2 = svdApprox(A,55); % tilh?rer oppg 5a)
A3 = svdApprox(A,k2);
%imageview(A1)
imageview(A3)