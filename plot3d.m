function plot3d(x,y,fxy)

figure;

mesh(x,y,fxy);

xlabel('x axis');

ylabel('y label');
zlabel('f_{xy}');


figure;

[r,c1]= find(y== 0);

x0 = x(r,:);

y0 = fxy(c1,:);

plot(x,y0,'r--');


hold
[r,c2]= find(y (:,1)== -2);

x2 = x(r,:);

y2 = fxy(c2,:);
plot(x2,y2,'b-')
[r,c]= find(y(:,1) == 1.6);

x6 = x(r,:);

y6 = fxy(c,:);

plot(x6,y6,'k-*');

axis([-1,1,0,1]) ; 
legend('y = 0m','y = -2m','y = 1.6m');

end