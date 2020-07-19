L = 200; U = 200;
plot([-L U],[0 0],'b',[0 0],[-L U],'b'); % Tegner akser
axis([-L U -L U]);
axis manual;
grid;
hold on;

A = [0 1.6;0.3 0.8];
[V D] = eig(A);
x = [15;10];
for k = 1:30
    plot(x(1),x(2),'or');
    x = A*x
end