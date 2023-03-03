% CONTOURFOCUS  Show contour plot of a function of 2 variables.

f = @(x,y) 2*x.^2 + x.*y + 5 * y.^2 + 2 * x;
ezcontour(f,[-1 0 -0.5 0.5])
hold on
plot(-20/39,2/39,'ko')
text(-20/39 + 0.02,2/39,'(-20/39,2/39)','fontsize',18)
ezcontour(f,[-0.7 -0.3 -0.1 0.2])
xlabel x, ylabel y
hold off
 
