function [x] = PFD(E,a,n,m) %Similar a PosicaoFalsa.m faz o calculo da raiz da derivada via posição falsa
  I = m-n; % Intervalo
  h=1;
  while(I>0.0000001) % E=10^-7
    x = ((n*dF(m,a))-(m*dF(n,a)))/(dF(m,a)-dF(n,a));
    f = dF(x,a);
    if(abs(f)<E)
      return
    endif
    if(f*dF(n,a)>0)
      n = x;
    else
      m = x;
    endif
    I = m-n;
    h++;
  endwhile
endfunction
