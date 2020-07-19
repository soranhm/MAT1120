function [xvals,muvals]=powermethod(A,x,numtimes,tol) 
xvals=[];
muvals=[];
for r=1:numtimes 
    x = A*x;
    [maxval,maxnr]=max(abs(x)); 
    mu = x(maxnr) 
    muvals=[muvals mu]; 
    xvals=[xvals (1/mu)*x]; 
    % R = x?*A*x/(x?*x) 
    error=max(abs(A*x-mu*x)); 
    if error<tol
    break; 
    end
end
