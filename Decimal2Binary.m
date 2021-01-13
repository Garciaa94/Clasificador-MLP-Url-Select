function bin = dectobin(xx)
divisor=2;
cociente=0;
residuo=0; 
a=0;
i=1;
j=1;
b=1;
c=2;
x=0;1;
w=0;
z=0;
n=1;%input("Ingrese el tipo de Numero que quiere convertir, ingrese (1) para Convertir de Decimal a Binario, ingrese (2) para convertir de Binario a Decimal ");
if (n==1)
dividendo=xx;%input('Ingrese el numero Decimal, para convertir a Binario ');
residuo=dividendo;
 while c>1;
  while residuo>=divisor 
   cociente=cociente+1; 
   residuo=residuo-divisor;
  end
   a(j,i)= residuo;
   i=i+1;
   residuo=cociente;
   c=cociente;
   cociente=0;
 
  end
a(j,i)=c
f=i
while b<=i
    x(j,b)=a(j,f);
    f=f-1;
    b=b+1;
end
    %disp('Este es el numero en Binario ')
    
disp(x)
bin=x 
else 
    if n==2
%     z=input('Ingrese cada digito de el numero Binario separado por comas, para convertirlo a Decimal');   
     z(j,b);
    end
    
bin=x        
    end   