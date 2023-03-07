% EXERCISE67  Check my by-hand calculation of the double
% integral in Exercise #67 in section 5.2.  Uses the 2-variable
% midpoint rule on a grid of m x m cells over the square
% [-1,1] x [-1,1].  Try m=10, 100, 1000.

m = 100;
h = 2 / m;
x = -1+h/2:h:1-h/2;
y = x;

f = @(x,y) x*y + 1;
s = 0.0;
for i = 1:m
    for j = 1:m
        if x(i) > -1 + y(j)^2 && x(i) < sqrt(1 - y(j)^2)
            s = s + f(x(i),y(j));
        end
    end
end
s = h^2 * s
