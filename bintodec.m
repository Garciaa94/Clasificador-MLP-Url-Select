function dec = bintodec(num)
L=length(num);
decimal=0;
for i=1:L
 decimal=decimal +(num(i))*2^(L-i);
end
%display(decimal)
dec=decimal;