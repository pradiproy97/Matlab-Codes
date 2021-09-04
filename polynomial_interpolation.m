clear all
close all
n = 10;
xi= linspace(-1,1,n);
yi= [3 2 2 1 0 -3 -4 1 2 4];
plot (xi,yi,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor','k');
hold on;

% computation of 'd' vector
d = yi';

% Computation of 'G' matrix
for i=1:n
    for j=1:n
        G(i,j) = xi(i)^(j-1);
    end
end

% Computation of 'm' vector
m = G\d;

% Computation for plotting
N = 1000;
for i = 1:n-1
    x1 = xi(i); x2 = xi(i+1);
    x = linspace(x1,x2,N);
    for j = 1:N
        sm = 0;
        for k = 1:n
            sm = sm + m(k) * x(j)^(k-1);
         end
        y(j) = sm;
    end
    plot(x,y,'b');
end

