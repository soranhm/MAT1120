A = [30 64 23;-11 -23 -9;6 15 4];
[U,D] = eig(A);
a = real(D(1,1)); % a > 0 
b = imag(D(1,1));

y1 = []; y2 = []; 
for t=0:0.05:10;
    y1 = [ y1 (real(U(:,1))*cos(b*t) - imag(U(:,1))*sin(b*t))*exp(a*t) ];
    y2 = [ y2 (real(U(:,1))*sin(b*t) + imag(U(:,1))*cos(b*t))*exp(a*t) ];
end
axis([-10000 10000 -10000 10000])
plot(y1(1,:),y1(2,:),'g'); 
