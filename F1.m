function [n,m] = F1(a) % calcula o isolamento para a derivada
  x = dF(0.00001,a); % calcula o f(10^-5)
  for i=1:100000 % vai de 1 ate 100000 testando se ha mudanca de sinal
    if (x*dF(i,a)<0)
      m = i; % se hover mudanca de sinal o i vira o limite superior
      break;
    endif
  endfor
  n = m-1+0.00001; % e o i-1 o limite inferior
endfunction
