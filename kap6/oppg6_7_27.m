A=rand(10,4) % tilfeldig matrise
[Q,R]=qrfact(A) % R skal v?re ovretriangulaer med pos. elem. paa diag. 
Q'*Q % Blir lik I hvis kol. til Q er ortonormale
Q*R % Skal gi tilbake A