n = 0:1:199;
x = input('Enter the function x(n): ');
plot(n,x,'-.r.');
hold on;

for a = 1:1:200
    if a == 1
        y = -1.5.*x(a) + 2.*x(a+1) - 0.5.*x(a+2);
        plot(a,y,'-.m.');
    end
    
    if a > 1 && a <= 199
        y = 0.5.*x(a+1) - 0.5.*x(a-1);
        plot(a,y,'-.m.');
    end
    
    if a == 200  
        y = 1.5.*x(a) - 2.*x(a-1) + 0.5.*x(a-2);
        plot(a,y,'-.m.');
    end
end
%LABELING THE GRAPHS
legend('x(n)','y(n)');