% test_svd
clc
clear
a = rand(3,4)
[u,s,v]=svd(a)
av = a*v
atu = a'*u

for i=1:40, fprintf('='),end,fprintf('\n')

a = rand(4,3)
[u,s,v]=svd(a)
av = a*v
atu = a'*u