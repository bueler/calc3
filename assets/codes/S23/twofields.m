% FIELDS  Use QUIVER to plot two example vector fields:
%   red:    F = < x, y >
%   blue:   F = < -y, x > / sqrt(x^2+y^2)

[x, y] = meshgrid(-2:.2:2, -2:.2:2);

subplot(1,2,1)
quiver(x,y,x,y,'r')
xlabel x,  ylabel y
axis equal,  axis tight

subplot(1,2,2)
r = sqrt(x.^2 + y.^2);
u = - y ./ r;
v = x ./ r;
quiver(x,y,u,v)
xlabel x,  ylabel y
axis equal,  axis tight

%print -dpng twofields.png
