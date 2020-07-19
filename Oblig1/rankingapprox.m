%Oppgave 9
function x = rankingapprox(A,delta)
n = size(A);
x = ones(n(1),1)/n(1);   % start x
S = ones(n(1),n(1))/n(1);% lager S
M = 0.85 * A  + 0.15 * S;% regner ut M
xk = M * x;              
while 1 % for alltid til blir stoppet
    maks = abs(xk(1)-x(1)); % start maksen
    for k = 2:n(1)          % for-lokke fra 2
        d = abs(xk(k)-x(k));% nye maksen
        if d > maks         % hvis start maksen er mindre enn nye maks
            maks = d;       % start maks = nye maks
        end
    end
    if maks < delta         % hvis maksen er mindre enn delta
        return              % stopp for-lokken
    end
    x = xk;                 % x(k-1) = x(k)
    xk = M * x;             % x(k) = M * x(k-1)
end