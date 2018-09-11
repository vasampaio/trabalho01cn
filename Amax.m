function [x] = Amax() % calcula o a maximo
  E = 0.00001; % precisao de 10^-5
  n = 1; % intervalo entre 1 e 2 observado de forma analitica
  m = 2;
  I = m-n;
  h = 1;
  while((I>E)&&(h<10000))
    x = (m+n)/2; % usa o metodo da bissecao para calcular o candidato a raiz
    [k y] = F1(x); % calcula o isolamento da funcao derivada para aquele candidato a raiz
    max = F(PFD(0.00001,x,k,y),x); % calcula o valor maximo da funcao para aquele canditado
    if((max<(2))&&(max>(2-E))) % e testa se ele se aproxima o suficiente de 2 para ser considerado o valor maximo em que não ha explosao
      h;
      return
    endif
    if((F(PFD(0.00001,x,k,y),x))>2); % calcula o novo limite do intervalo
      m=x;
    else
      n=x;
    endif
    I = m - n;
    h++;
  endwhile
  h;
endfunction
