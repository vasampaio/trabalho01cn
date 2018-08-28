function [x] = NewtonRaphsonMod(E,a,x)
  f = F(x,a);
  df = dF(x,a);
  h=1;
  while(abs(f)>E)
    x = x - (F(x,a)/df);
    f = F(x,a);
    h++;
  endwhile
  h
endfunction