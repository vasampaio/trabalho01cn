function [x] = PosicaoFalsa(E,a,n,m)
  I = m-n;
  h=1;
  while(I>E)
    x = ((n*F(m,a))-(m*F(n,a)))/(F(m,a)-F(n,a));
    f = F(x,a);
    if(abs(f)<E)
      h
      return
    endif
    if(f*F(n,a)>0)
      n = x;
    else
      m = x;
    endif
    I = m-n;
    h++;
  endwhile
  h
endfunction
