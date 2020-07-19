function functionAk = svdApprox(A,k)
    A = double(A);                  % konvertert til datatype
    r = rank(A);                    % velger r
    [U,S,V] = svd(A);               % returnerer SVD
    functionAk = zeros(size(A));    % lager tom matrise 
    for i = 1:k                     
        functionAk = functionAk + S(i,i)*U(:,i)*V(:,i)';% likning (2)
        if k > r 
            fprintf(' for stor k \n'); % feilmelding for stor k verdi
            break
        end
    end
end