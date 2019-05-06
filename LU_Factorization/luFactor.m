function [L,U,P]=luFactor(A)
%To use luFactor set A equal to an N by N matrix
%like A=[4,5,6;3,4,5;2,3,1] or A=
%Then type in [L,U,P]=luFactor(A) to use the function
%luFactor is used to find the L,U,P of the LU factorization.
%L is the lower triangular matrix
%U is the upper triangular matrix
%P is the pivot matrix

clc
format shortg
clearvars -except A* % to clear any left over varables
[row,col]=size(A); 
if row~=col %this is to see if the matrix is a N by N matrix
    error('the coefficient matrix must be a square matrix')
end
L=eye(row);%this the beginning of a lower triangle matrix
P=eye(row);%the pivot matrix 
for p= 1:(row-1) %this for loop is to switch the first row with the largest absolut value row
    [~,idx]=max(abs(A(p:row,p)));% Finds the maximum in the specific row
    idx=idx+p-1;
    A([p idx],:)=A([idx p],:);% switches the rows
    P([p idx],:)=P([idx p],:);% switches the rows in the pivet matrix
    if p>1&&p<row
       L([p idx],p-1)=L([idx p],p-1);
    end
    for n= (p+1):row %this for loop is to find the f values in the lower triangle matrix
        L(n,p)=A(n,p)/A(p,p); % how to find the f value
        for s= p:row %This for loop is to plug in the f value to make the upper triangler matrix 
            A(n,s)=A(n,s)-L(n,p)*A(p,s);% This equation is to use the f that is in the lower matrix and 
        end                              % Plugging into the one row of the upper matrix to find the A' or A'' and so on.  
    end
end
U=A;
    




