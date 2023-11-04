%{
%data = xlsread('two.xlsx'); % An old way
%data = readtable('two.xlsx');
%data3 = readcell('two.xlsx');
%}

data = readmatrix('two.xlsx');
x1 = data( : , 1)';
x2 = data( : , 2)';
t = data( : , 3)';
p =  [x1; x2] ;
