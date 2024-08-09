function falsa_posicao_modificado

  a = 0;
  b = 2; %intervalo [a, b]
  fa = funcao (a);
  fb = funcao (b);
  intervalo = 0.1; %quanto eu quero que varie
  x = [a:intervalo:b];
  y = funcao(x);
  plot(x,y) %plotar o gráfico da função
  grid
  hold on
  erro = 10^-15; %quanto eu quero de erro
  k = 0; %número de iterações
  fxm = 1 %inicia na fxm
  while (abs(fxm) > erro) %enquanto nao tenho a precisão que preciso

    k = k+1 %numero de iteracoes
    xm = ((a*fb)-(b*fa))/(fb-fa) %falsa posição modificado
    fxm = funcao(xm)
    r = fa+((fb-fa)/(b-a))*(x-a); %reta que passa nos pontos

    if (fa*fxm<0) %se tiver raiz reduz o intervalo

      pa = fb/(fb+fxm); %modificado
      fa = fa*pa; %modificado
      b = xm
      fb = fxm;

    else %continua procurando raiz

      pb = fa/(fa+fxm); %modificado
      fb = fb*pb; %modificado
      a = xm;
      fa = fxm;

    end


  end

    k %printar numero de iteraçoes
    xm %mostrar x da raiz
    fxm %valor aproximado da raiz
    plot(x,r,'r') %plota a reta
    hold on

end

function f = funcao(x)

  f = exp(x) - 2*cos(x); %funcao pedida na questao

end





