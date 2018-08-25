function [x] = NewtonRaphson(E,a,x)
  f = F(x,a);
  h=0;
  while(abs(f)>E)
    x = x - (F(x,a)/dF(x,a));
    f = F(x,a);
    h++;
  endwhile
  h
endfunction
