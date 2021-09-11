clear all
close all
n = 20;
y = randperm(n);

% for maximum number in the array
a = y(1);
for i = 1:n-1
    if a < y(i+1);
        a = y(i+1);
    end
end
fprintf("The maximum number in the array %d \n",a);

%for minimum number in the array
b = y(1);
for i = 1:n-1
    if b > y(i+1);
        b = y(i+1);
    end
end
fprintf("The minimum number in the array %d \n",b);

% for sorting of the array from smallest to largest element
c=0;
for i=1:n
    for j=1:n
        if(y(i)<y(j))
            c=y(i);
            y(i)=y(j);
            y(j)=c;
        end
    end
end
fprintf("Sorted array from smallest to largest element \n");
disp(y)

% sorting using matlab function
fprintf("Sorted array using matlab function \n");
y2 = sort(y)

