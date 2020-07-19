%Oppgave 8
function x = ranking(A)
n = size(A);    % faar ut n(1)xn(2)
if n(1) ~= n(2) % hvis ikke en nxn matrise
    fprintf('Matrisen er ikke nxn\n');
    return
end
for k=1:n(1)-1
    for i=1:n(2)-1
        if A(k,i) < 0        % hvis ikke regul?r
            fprintf('Matrisen er ikke stokastisk \n');
            return
        end
    end
end
for k=1:n
    if sum(A(:,k)) > 1       % hvis summen av kolonnen er > 1
        fprintf('Matrisen er ikke stokastisk \n');
        return
    end 
end
S = (1/n(1))*ones(size(A));  % lager S matrisen
M = 0.85 * A + 0.15 * S;     % regner ut M matrisen
I = eye(size(A));            % identitets matrisen til M
x = null(M-I);              
summ = sum(x);
x = x/summ;