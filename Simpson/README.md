# Simpson
The code Simpson.m was made to estimate the intagral of a function using the Simpson's 1/3rd rule. This Simpson's 1/3rd rule usually requires an odd number of values, but this code can have an even number of values. The way this code can do it is by using the trapizoidal rule to estimate the last two values. The code does warn you about this part of the code. 
The function Simpson(x,y) can be used if you make an array made of x values and make another array made of y values that are made from the function using the x values. To use Simpson type I = Simpson(x,y)
This function gives you I, which is the integral of the values.
* x = x values that have the same stepsize.
* y = y values from the function using the x values
* I = the estimated integral
