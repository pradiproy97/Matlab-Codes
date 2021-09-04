clear all
close all
n = 10;
N = 1000;
xi= linspace(-1,1,n);
yi= [3 2 2 1 0 -3 -4 1 2 4];
plot (xi,yi,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor','k');
hold on;

% For the first point

x1 = linspace(xi(1),xi(2),N);
x2 = (xi(1)+xi(2))/2;
for i = 1:N
    if x1(i) <= x2
        x3(i) = x1(i);
        y1(i) = yi(1);
    end
end
plot(x3,y1,'b');

% For the last point

x4 = linspace(xi(n),xi(n-1),N);
x5 = (xi(n-1)+xi(n))/2;
for i = 1:N
    if x4(i) > x5
        x6(i) = x4(i);
        y2(i) = yi(n);
    end
end
plot(x6,y2,'b');

% For intermediate points

for i = 2:n-1
    x7 = (xi(i-1)+xi(i))/2; x8 = (xi(i)+xi(i+1))/2;
    a = (x8-x7)/N;
    x9 = linspace(x7,x8-a,N);
    for j = 1:N
        y3(j) = yi(i);
    end
    plot(x9,y3,'b');
end