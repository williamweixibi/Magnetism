function [ET, EX, EY, EZ] = ringofcharge(a,p,x,y,z,N)

epsilon = 8.854e-12;
dphi = 2*pi/N;
phiprime = linspace(0,2*pi,N);
dEx = dphi*(x-a*cos(phiprime))./((x-a*cos(phiprime)).^2 + (y-a*sin(phiprime)).^2 + z^2).^1.5;
dEy = dphi*(y-a*sin(phiprime))./((x-a*cos(phiprime)).^2 + (y-a*sin(phiprime)).^2 + z^2).^1.5;
dEz = dphi*z./( (x-a*cos(phiprime)).^2 + (y-a*sin(phiprime)).^2 + z^2).^1.5;

k = (p*a/(4*pi*epsilon));

EX = k * sum(dEx);
EY = k * sum(dEy);
EZ = k * sum(dEz);

ET = (EX^2 +EY^2 +EZ^2)^0.5;