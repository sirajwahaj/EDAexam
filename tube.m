%% Sampling from the tube, cutted tube
clear all
r=1; % minor radius 
R=3; % major radius 
n1=10000; % number of sampling points from tube
t0=rand(n1,1);
t=(t0-min(t0))*1*pi/(max(t0)-min(t0));
s0= rand(n1, 1);
s1=(s0-min(s0))*2*pi/(max(s0)-min(s0));
X1 = (R+r*cos(s1)).*cos(t);
X2 =(R+r*cos(s1)).*sin(t); 
X3 = r*sin(s1);
X = [X1, X2, X3];% bended tube
plot3(X1, X2, X3 ,'r.')
title('Bended tube')
axis equal

figure 
n2=10000 ; % number of sampling points from cutted tube
tt0=rand(n2,1);
tt=(tt0-min(tt0))*0.5*pi/(max(tt0)-min(tt0));
ss0= rand(n2, 1);
ss1=(ss0-min(ss0))*pi/(max(ss0)-min(ss0));
ss2=pi+ss1;
Z1 = (R+r*cos(ss2)).*cos(tt);
Z2 = (R+r*cos(ss2)).*sin(tt); 
Z3 = r*sin(ss2);
Z = [Z1, Z2, Z3];
plot3(Z1, Z2, Z3 ,'b.')
title('Cutted tube ')
