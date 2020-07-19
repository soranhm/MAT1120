function [xvals,nuvals]=inversepowermethod(alpha,A,x,numtimes,tol) 

xvals=[];
nuvals=[];
n= length(x);

for r=1:numtimes
    reduced = rref( [(A-alpha*eye(n)) x]); 
    y = reduced(:,n+1); 
    [maxval,maxnr]=max(abs(y));
    mu = y(maxnr);
    xvals=[xvals (1/mu)*y];
    nuvals=[nuvals alpha+(1/mu)]; 
    error=max(abs(A*x-mu*x));
    if error<tol
    break; 
    end
end