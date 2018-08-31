function [x] = PosicaoFalsa(E,a,n,m)
  I = m-n;
  h=1;
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\ta\tf(a)\t\tb\tf(b)\t\tx\t\tf(x)\t\tI");
  while(I>E)
    x = ((n*F(m,a))-(m*F(n,a)))/(F(m,a)-F(n,a));
    f = F(x,a);
    printf("\n%d\t%d\t%d\t%d\t%d\t%d\t\t%d\t%d\n",h,n,F(n,a),m,F(m,a),x,f,I);
    if(abs(f)<E)
      printf("\n-----------------------------------------------------------------------------------------\n");
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
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
