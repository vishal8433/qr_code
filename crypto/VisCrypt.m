function [share1, share2, share12] = VisCrypt(inImg)
s = size(inImg);
share1 = zeros(s(1), (2 * s(2)));
share2 = zeros(s(1), (2 * s(2)));
%%White Pixel 
s1a=[1 0];
s1b=[1 0];
[x, y] = find(inImg == 1);
len = length(x);
for i=1:len
    a=x(i);b=y(i);
    pixShare=generateShare(s1a,s1b);
    share1((a),(2*b-1):(2*b))=pixShare(1,1:2);
    share2((a),(2*b-1):(2*b))=pixShare(2,1:2);
end
%Black pixel
s0a=[1 0];
s0b=[0 1];
[x, y] = find(inImg == 0);
len = length(x);
for i=1:len
    a=x(i);b=y(i);
    pixShare=generateShare(s0a,s0b);
    share1((a),(2*b-1):(2*b))=pixShare(1,1:2);
    share2((a),(2*b-1):(2*b))=pixShare(2,1:2);
end
share12=bitor(share1, share2);
   share12= ~share12;