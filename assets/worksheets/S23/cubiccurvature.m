% CUBICCURVATURE  Illustrate the curvature result in
% section 3.3, Exercise #134, for y = f(x) = (1/3) x^3.

% plot the curve in blue, and the point (1,f(1))
x = -2:.01:2.5;
plot(x,(1/3)*x.^3,'b')
hold on

% plot the osculating circle in red
theta = 0:pi/200:2*pi;
plot(sqrt(2)*cos(theta),(4/3)+sqrt(2)*sin(theta),'r')
plot(0,4/3,'rx')
plot([0 1],[4/3,1/3],'r:')
plot(1,1/3,'ko')
grid on,  axis equal,  hold off
