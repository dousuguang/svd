%test_svd.m

clc
clear

a = reshape(1:9,3,3);
a = a+a';

a = rand(3);
a = a+a';
[u,s,v] = svd(a);
s(1) = 0;
a = u*s*v'

[u,s,v]=svd(a)

av = a*v
atu = a'*u

null_a  = null(a)

null_at = null(a')

disp('Can you see the null vectors? They are mapped to zeros.')

ab = [a u(:,3); v(:,3)' 0]

[u,s,v] = svd(ab)

c = zeros(size(ab,1),1);
c(end) = 1;
d = ab \ c
g = d(end)