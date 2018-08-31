function [x] = NewtonRaphsonMod(E,a,x)
  f = F(x,a);
  df = dF(x,a);
  h=1;
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\txn-1\tf(xn-1)\t\tdf(x0)\t\tx\tf(x)\n");
  while(abs(f)>E)
    y = x - (F(x,a)/df);
    f = F(y,a);
    printf("\n%d\t%d\t%d\t%d\t%d\t%d",h,x,F(x,a),df,y,f);
    x=y;
    h++;
  endwhile
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction