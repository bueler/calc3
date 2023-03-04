% EXERCISE344  Generate a figure that shows exercise #344 in section 4.7

f = @(x,y) x .* y - x - 3 * y;
[x,y]=meshgrid(0:.01:5,0:.01:4);
pcolor(x,y,min(f(x,y),0)),  shading flat
colorbar
hold on,  fill([5 5 0],[0 4 4],'w')
plot(0,0,'k*')
plot(0,4,'k*')
hold off
title('max at (0,0) and min at (0,4)')
xlabel x,  ylabel y
print -dpng exercise344.png
