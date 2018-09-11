function [n,m] = F1(a) % calcula o isolamento para a derivada
  x = dF(0.00001,a); % calcula o f(10^-5)
  for i=1:100000 % vai de 1 até 100000 testando se há mudança de sinal
    if (x*dF(i,a)<0)
      m = i; % se hover mudança de sinal o i vira o limite superior
      break;
    endif
  endfor
  n = m-1+0.00001; % e o i-1 o limite inferior
endfunction