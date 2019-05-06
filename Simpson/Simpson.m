function I = Simpson(x,y) 
%The function Simpson(x,y) can be used if you make an array made of x
%values and make another array made of y values that made form the
%function made form the x values.
%Also to use Simpson type 'I = Simpson(x,y)
%This function gives you I, which is the integral of from the values.
[xn]=length(x);
[yn]=length(y);
x_sup=linspace(x(1),x(xn),xn);%This is to create a x values that at equally spaced that...
for n=1:xn
    if x(n) ~= x_sup(n) %are compared to every x value that is in the array...
        error('The x input are not equally spaced.') %and if one or more values are not equally spaced 
    end%then an error is created
end
if yn ~= xn %this is to see if the there is a y value for every x value.
    error('The y input does not have the same amount of inputs as x.')
end
f4=0;
f2=0;
if rem(xn,2)==1 %This if else statement is to sepperate on were the if the values to be used in a simpsons 1/3 rule or needed to use the trapezoidal rule on the last intiveral. 
    for n=1:((xn-1)/2)
        f4=f4+y(2*n); %This for loop is to add up the y values that get multiplied by 4 
        if n>1
           f2=f2+y(2*n-1); %This for loop is to add up the y values that get multiplied by 2
        end
    end
    I=(x(xn)-x(1))*((y(1)+4*f4+2*f2+y(xn))/(3*(xn-1)));%puts all the values into Simpson's 1/3 rule to get the intigral. 
elseif rem(xn,2)==0 %This part of the else statement is used if there is an even number of values 
    xw=xn-1;
    warning('There are an even number of x values and Simpsons 1/3 rule needs the values to be an odd number.\n The first %1.f values and use the trapezoidal rule for the last bin',xw)
    for n=1:((xn-2)/2)%This for loop is to add up the y values that get multiplied by 4
        f4=f4+y(2*n);
        if n>1
            f2=f2+y(2*n-1);%This for loop is to add up the y values that get multiplied by 2
        end
    end
    S=(x(xn-1)-x(1))*((y(1)+4*f4+2*f2+y(xn-1))/(3*(xn-2))); %This is the simpson's 1/3 rule part of the calculations 
    T=(x(xn)-x(xn-1))*((y(xn-1)+y(xn))/2);%This is the trapezoidal rule 
    I=S+T; %This is the final integral
end