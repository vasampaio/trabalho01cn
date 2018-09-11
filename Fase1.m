function [n,m] = Fase1(a) % calcula o isolamento
  x = F(0.00001,a);  % calcula o f(10^-5)
  for i=1:100000 % vai de 1 at� 100000 testando se h� mudan�a de sinal
    if (x*F(i,a)<0)
      m = i; % se hover mudan�a de sinal o i vira o limite superior
      break;
    endif
  endfor
  n = m-1+0.00001; % e o i-1 o limite inferior
endfunction
