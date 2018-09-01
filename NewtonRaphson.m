function [x] = NewtonRaphson(E,a,n,m)
  x = ((n*F(m,a))-(m*F(n,a)))/(F(m,a)-F(n,a));
  f = F(x,a);
  h=1;
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\txn-1\tf(xn-1)\t\tdf(xn-1)\tx\tf(x)\n");
  while(abs(f)>E)
    y = x - (F(x,a)/dF(x,a));
    f = F(y,a);
    printf("\n%d\t%d\t%d\t%d\t%d\t%d",h,x,F(x,a),dF(x,a),y,F(y,a));
    h++;
    x=y;
  endwhile
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
