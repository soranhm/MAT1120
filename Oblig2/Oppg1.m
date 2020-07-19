u = [2;3;4;2];     % tilfeldig u matrise 
vt = [1 2 3 2 3];  % tilfeldig v^T matrise
uv = u*vt;         % regner ut uv^T
rref(uv);          % f?r den p? redusert trappeform
rank(uv);          % bruker rank funckjon til ? finne rang