clc;
disp('RSA ENCRYPTION');
clear all; close all;
p = input('\nEnter the value of p: ');
q = input('\nEnter the value of q: ');
[n,Phi,d,e] = intialize(p,q);
M = input('\nEnter the message: ','s');
x=length(M);
c=double(M);
disp('ASCII Code of the entered Message:');
disp(c);

for j= 1:x
   cipher(j)= encrypt(c(j),n,e); 
end

disp('Cipher Text of the entered Message:');
disp(cipher);
disp('Cipher text generated');
fid=fopen('cipher.txt','w'); 
fprintf(fid,'%d ',cipher); 