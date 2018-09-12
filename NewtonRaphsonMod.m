function [x] = NewtonRaphsonMod(E,a,n,m)% similar ao NewtonRaphson.m recebe as mesmas coisas
  x = (n+m)/2;
  f = F(x,a);
  df = dF(x,a);% calcula a derivada no ponto x0
  h=1;
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\txn-1\tf(xn-1)\t\tdf(x0)\t\tx\tf(x)\n");
  while((abs(f)>E)&&(h<10000))
    y = x - (F(x,a)/df); % a derivada no ponto x0 sera utilizada em todas as iteracoes
    f = F(y,a);
    printf("\n%d\t%d\t%d\t%d\t%d\t%d",h,x,F(x,a),df,y,f);
    x=y;
    h++;
  endwhile
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
