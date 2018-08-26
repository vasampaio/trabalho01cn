function [n,m] = F1(a)
  x = dF(0.00001,a);
  for i=1:100000
    if (x*dF(i,a)<0)
      m = i;
      break;
    endif
  endfor
  n = m-1+0.00001;
endfunction