function [y]=integration(x1,x2)
x = linspace(x1,x2,10000);
sum = 0;
deltax = (x2-x1)/10000;
for k = 1:10000
    sum = sum + deltax.*exp(x1+k.*deltax);
end

y = sum;