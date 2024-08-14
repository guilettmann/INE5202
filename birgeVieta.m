function birgeVieta
  clear
  clc
  a=[8 0 -2 -13 5 -4];
  n=length(a);
  x0=1;
  erro=10^-8;
  k=0;
  b(1)=a(1);
  c(1)=b(1);
  b(n)=1;

  while (abs(b(n))>erro)
    k=k+1;
    for i=2:n
      b(i)=b(i-1)*x0+a(i);
      c(i)=c(i-1)*x0+b(i);
     end
    b(n)=b(n-1)*x0+a(n);
    x0=x0-b(n)/c(n-1);


   end
   k
   x0
   b(n)
  end




