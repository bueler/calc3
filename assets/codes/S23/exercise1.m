% EXERCISE1  Solve 5.1 #1, a midpoint rule estimate in 2 variables
% of f(x,y) = 4x + 2y + 8xy over the square [1,2] x [1,2].
% You can also use linspace() to generate the xmids, ymids arrays.

f = @(x,y) 4*x + 2*y + 8*x.*y;
m = 4;  n = 2;

% generate mesh of midpoints
dx = 1/m;  dy = 1/n;
xmids = 1+dx/2:dx:2-dx/2;         % midpoints in x direction
ymids = 1+dy/2:dy:2-dy/2;         %   "       "  y "
[xx,yy] = meshgrid(xmids,ymids);  % outputs the grid of midpoints

% now Matlab does all the plugging-in and summing:
dA = dx * dy;
V = sum(sum(f(xx,yy))) * dA   % the double Riemann sum
