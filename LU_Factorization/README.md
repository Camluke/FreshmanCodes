# LU_Factorization
LU Factorization is used to find the unknowns in a group of equations. For example:
2x+3y+4z=45
3x+4y+5z=30
5x+6y+2z=60
However, this code doesn't solve the equation, but only set up the upper and lower triangular matrixs, while keeping track of the pivots make in the matrix.
To use luFactor set A equal to an N by N matrix
like A=[2,3,4;3,4,5;5,6,2]
Then type in [L,U,P]=luFactor(A) to use the function in the command window.
L = the lower triangular matrix
U = the upper triangular matrix
P = the pivot matrix
A = the initial matrix
