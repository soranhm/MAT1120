A = imread('mm.gif','gif');
Ak = svdApprox(A,55);       % regner ut tiln?rmingen
% regner ut feil mellom tiln?rmingen og orginale
relError(A, Ak) ;      