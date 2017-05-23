function [y]=plotpolynomial(vector,range)
[nc,nr] = size(vector);
plotstyle= {'g--','b-.','r:','c','g-.','b--','k','y-.','m:'};
x = linspace(range(1),range(2),11);
figure;
hold;
sum = 0;
if nc>nr
    order = nc;
    for i= 1:nc
        y=vector(i,1).*x.^(i-1);
        plot(x,y,plotstyle{i},'DisplayName',['Term' num2str(i)]);
        sum = sum + y;
    end
else
    order = nr;
    for i = 1:nr
        y=vector(1,i).*x.^(i-1);
        plot(x,y,plotstyle{i},'DisplayName',['Term' num2str(i)]);
        sum = sum + y;
    end
end
plot(x,sum);
xlabel('x');
ylabel('y');
legend('show');
title(['Plot of Polynomial ' num2str(order)]);