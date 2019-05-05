function [root,siter,ea, f_x]=falsePosition(fx,xl,xu,des,iter)
clc;
es=100;
siter=0;

if fx(xl)* fx(xu)>0
    error('f(x_l) and f(x_u) do not have opposite signs');
end    
while es>des % creates a loop and stops when the relative error reachs the desired relative error
siter=siter+1; % counts iterations
x_r=(xu-(fx(xu)*(xl-xu))/(fx(xl) - fx(xu)));%to find the midpoint.
if fx(x_r)*fx(xl)<0 %sorts out the x_r to replace the uper or lower bound.
    es=((fx(x_r)-fx(xu))/fx(x_r));
        xu=x_r;
elseif fx(x_r)*fx(xu)<0
    es=((fx(x_r)-fx(xl))/fx(x_r));
        xl=x_r;
end
ea=abs(es);
f_x=fx(x_r);
if siter==iter
    break
end
end
if ea>100% is to stop the percent from breaking
    ea=0;
end
root=x_r;
fprintf('The root is %1.4f,\n f(x)= %1.4f,\n The approximate relative error is %1.4f percent,\n iter= %1.f\n',root,f_x,ea,siter)