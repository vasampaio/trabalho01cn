function [x] = NewtonRaphson(E,a,n,m) %Calculo da raiz via NewtonRaphson, recebe a precisão o a e o intervalo
  x = (n+m)/2; % o x0 a ser testado é o ponto medio do intervalo
  f = F(x,a); % cal do f(x0)
  h=1;
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\txn-1\tf(xn-1)\t\tdf(xn-1)\tx\tf(x)\n");
  while(abs(f)>E)
    y = x - (F(x,a)/dF(x,a));
    f = F(y,a);
    printf("\n%d\t%d\t%d\t%d\t%d\t%d",h,x,F(x,a),dF(x,a),y,F(y,a)); % Printa em "forma de tabela"
    h++;
    x=y;
  endwhile
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
