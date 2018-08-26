function [x] = Amax()
  E = 0.001;
  n = 1;
  m = 2;
  I = m-n;
  h = 1;
  while((I>E)&&(h<10000))
    [k1 y1] = F1(n);
    x = (m+n)/2;
    [k3 y3] = F1(x);
    max = F(PFD(0.00001,x,k3,y3),x);
    if((max<(2+E))&&(max>(2-E)))
      return
    endif
    if((max*F(PFD(0.00001,n,k1,y1),n))>0)
      n=x;
    else
      m=x;
    endif
    I = m - n;
    h++;
  endwhile
endfunction
