% EXERCISE4  Solve 5.1 #4

f = @(x,y) cos(x) + cos(y);
m = 2;  n = 2;
%m = 200;  n = 200;

% generate mesh of midpoints
dx = pi/m;  dy = pi/(2*n);
xmids = 0+dx/2:dx:pi-dx/2;
ymids = 0+dy/2:dy:pi/2-dy/2;
[xx,yy] = meshgrid(xmids,ymids);  % outputs the grid of midpoints

% now Matlab does all the plugging-in and summing:
dA = dx * dy;
V = sum(sum(f(xx,yy))) * dA   % the double Riemann sum
