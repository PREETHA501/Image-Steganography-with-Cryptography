clc;
disp('RSA DECRYPTION');
clear all; close all;
p = input('\nEnter the value of p: ');
q = input('\nEnter the value of q: ');
[n,Phi,d,e] = intialize(p,q);
fileID = fopen('final.txt','r');
M = fscanf(fileID, '%d');
fclose(fileID);
x=length(M);

for j= 1:x
   message(j)= decrypt(M(j),n,d); 
end

disp('Decrypted ASCII of Message:');
disp(message);
disp(['Decrypted Message is: ' message]);
disp('Decrypted text file generated');
fid=fopen('readable.txt','w'); 
fprintf(fid,'%c',message); 