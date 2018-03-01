function quadapprox(f,x0,y0)
syms x;
syms y;
point = subs(f,[x,y],[x0,y0]); % Func at Point
dfdx = subs(diff(f,x),[x,y],[x0,y0]); % Partial x at point
dfdy = subs(diff(f,y),[x,y],[x0,y0]); % Partial y at point
d2fdx2 = subs(diff(diff(f,x),x),[x,y],[x0,y0]); %Second Partial x at point
d2fdxdy = subs(diff(diff(f,x),y),[x,y],[x0,y0]); %Partial y of Partial x at point
d2fdy2 = subs(diff(diff(f,y),y),[x,y],[x0,y0]); %Second Partial y at point
disp("The final Output");
disp(point + dfdx*(x-x0) + dfdy*(y-y0)+0.5*d2fdx2*(x-x0)^2+d2fdxdy*(x-x0)*(y-y0)+0.5*d2fdy2*(y-y0)^2);

%How to run this code
% In command window type in syms x; syms y; This makes x and y symbolically
% defined variables.
% Define your function. Example: f = log(- 4*y^2 + x + 1); Here log is the
% same thing as ln in Matlab. 
% Run your code with the correct parameters, for example if you want the
% quadratic approximation at (0,0) type in quadapprox(f,0,0) in command
% window.
% The output you will get for this example is - x^2/2 + x - 4*y^2.
