% SURFACES  Plot parameterized surfaces for
% exercises #274, #277, #281 in section 6.6.

figure('position',[100 200 1000 400])  % wide enough

subplot(1,3,1)
[u,v] = meshgrid(0:.1:3,0:pi/10:2*pi);
mesh(u.*cos(v),u.*sin(v),u.^2)
xlabel x,  ylabel y,  zlabel z
title('exercise #274')

subplot(1,3,2)
[u,v] = meshgrid(0:.1:3,0:pi/40:pi/2);
mesh(3*cos(v),3*sin(v),u)
xlabel x,  ylabel y,  zlabel z,  axis equal
title('exercise #277')

subplot(1,3,3)
[theta,phi] = meshgrid(0:pi/10:2*pi,0:pi/30:pi/2);
mesh(2*sin(phi).*cos(theta),2*sin(phi).*sin(theta),2*cos(phi))
xlabel x,  ylabel y,  zlabel z,  axis equal
title('exercise #281')
