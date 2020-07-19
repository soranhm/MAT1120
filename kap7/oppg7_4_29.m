A = [5 3 1 7 9;6 4 2 8 -8;7 5 3 10 9;9 6 4 -9 -5;8 5 2 11 4];
B = A'*A;
[V,D] = eig(B);
sigma = sqrt(D);
sigma5 = sigma(1:1)
sigma1 = sigma(5:5,5:5)
sigma1/sigma5