function [x] = PFD(E,a,n,m)
  I = m-n;
  h=1;
  while(I>0.0000001)
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
