function functionerror = relError(A, Ak)
    A = double(A);  % konvertert til datatype
    functionerror = norm(A-Ak)/norm(A)  % relative feilen
end