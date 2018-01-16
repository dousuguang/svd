% test_svd.m

clc
clear

a = rand(5);
[u,s,v] = svd(a);
s(1) = 0;
a = u*s*v'

[u,s,v]=svd(a)

av = a*v
atu = a'*u

disp('Can you see the null vectors? They are mapped to zeros.')
