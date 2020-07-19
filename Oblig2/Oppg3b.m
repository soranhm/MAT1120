A = imread('mm.gif','gif'); % leser in matrisen 
A = double(A);              % konvertert til datatype
% sjekker om a er en 256x256 matrise
storresle = size(A)
% bestemmer rang til A 
r = rank(A)
% rank(A,eps), eps = 0.001
eps = 0.001;
reps = rank(A,eps)