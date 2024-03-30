function falsa_posicao

  a = 0;
  b = 2; %intervalo [a, b]
  fa = funcao (a);
  fb = funcao (b);
  intervalo = 0.1; %quanto eu quero que varie
  x = [a:intervalo:b];
  y = funcao(x);
  plot(x,y) %plotar o gráfico da função
  hold on
  erro = 10^-15; %quanto eu quero de erro
  k = 0; %número de iterações
  fxm = (a+b)/2; %inicia na metade de a e b

  while (abs(fxm) > erro) %enquanto nao tenho a precisão que preciso

    k=k+1; %numero de iteracoes
    xm = a-((fa*(b-a))/(fb-fa)); %falsa posição
    fxm = funcao(xm);
    r = fa+((fb-fa)/(b-a))*(x-a); %reta que passa nos pontos

    if (fa*fxm<0) %se tiver raiz reduz o intervalo

      b = xm;
      fb = fxm;

    else %continua procurando raiz

      a = xm;
      fa = fxm;

    end


  end

    k %printar numero de iteraçoes
    xm %mostrar x da raiz
    fxm %valor aproximado da raiz
    plot(x, r,'r') %plota a reta
    hold on

end

function f = funcao(x)

  f = exp(x) - 2*cos(x); %funcao pedida na questao

end





