function [z]=polynomial1(a,b)

x = linspace(b(1),b(2),100);
z=0;
l = cell(length(a),1);
c = {'r','g','b','k','y','m','c'};
k = {'-',':','-.','--'};

for i = 1:1:length(a)
    p = strcat(c{1+fix(7*rand(1))},k{1+fix(4*rand(1))});
    y =a(i)*x.^(i-1);
    plot(x,y,p);
    hold on;
    z = z + y;
    l{i} = ['Term',num2str(i)];
end
plot(x,z);
l{i+1} = 'y(x)';
legend(l);
hold off;
end