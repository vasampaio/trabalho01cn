function [x] = Amax()
  E = 0.00001;
  n = 1;
  m = 2;
  I = m-n;
  h = 1;
  while((I>E)&&(h<10000))
    x = (m+n)/2
    [k y] = F1(x);
    max = F(PFD(0.00001,x,k,y),x);
    if((max<(2))&&(max>(2-E)))
      h
      return
    endif
    if((F(PFD(0.00001,x,k,y),x))>2);
      m=x;
    else
      n=x;
    endif
    I = m - n;
    h++;
  endwhile
  h
endfunction
