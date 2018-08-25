function [n,m] = Fase1(a)
  x = F(0.00001,a);
  for i=1:100
    if (x*F(i,a)<0)
      m = i;
      break;
    endif
  endfor
  n = m-1;
endfunction
