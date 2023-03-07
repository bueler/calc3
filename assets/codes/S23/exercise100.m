% EXERCISE100  Check my by-hand calculation of the double
% integral in Exercise #100 in section 5.2.  Uses the 2-variable
% midpoint rule on a grid of m x 2m cells over the rectangle
% [-2,2] x [-4,4].

m = 1000;
h = 4 / m;
x = -2+h/2:h:2-h/2;
y = -4+h/2:h:4-h/2;

f = @(x,y) x^2 + y;
s = 0.0;
for i = 1:length(x)
    for j = 1:length(y)
        if y(j) > - 4 + x(i)^2 && y(j) < 4 - x(i)^2
            s = s + f(x(i),y(j));
        end
    end
end
s = h^2 * s
