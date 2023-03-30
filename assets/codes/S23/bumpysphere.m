% BUMPYSPHERE Plot a bumpy sphere in Matlab.  See Exercise #422
% in section 2.7

[theta, phi] = meshgrid(0:pi/100:2*pi,0:pi/200:pi);
rho = 10 + cos(10*theta) .* sin(4*phi);
mesh(rho.*sin(phi).*cos(theta), rho.*sin(phi).*sin(theta), rho.*cos(phi))
axis equal
xlabel x, ylabel y, zlabel z
print -dpng bumpysphere.png
