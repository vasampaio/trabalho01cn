function [x] = PosicaoFalsa(E,a,n,m) % Recebe a precis�o a constante e o intervalo, retorna x
  I = m-n; %Calcula o intervalo
  h=1; % seta a primeira itera��o
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\ta\tf(a)\t\tb\tf(b)\t\tx\t\tf(x)\t\tI");
  while(I>E)% Enquanto o intervalo for maior que a precis�o
    x = ((n*F(m,a))-(m*F(n,a)))/(F(m,a)-F(n,a)); % calculo do x a ser testado
    f = F(x,a);% calculo do F(x) a ser testado
    printf("\n%d\t%d\t%d\t%d\t%d\t%d\t\t%d\t%d\n",h,n,F(n,a),m,F(m,a),x,f,I);
    if(abs(f)<E)% Testa se o x � valido
      printf("\n-----------------------------------------------------------------------------------------\n");
      return % termina a fun��o
    endif
    if(f*F(n,a)>0) %Determina��o dos novos limites do intervalo
      n = x;
    else
      m = x;
    endif
    I = m-n; % calculo do novo intervalo
    h++; % proxima itera��o
  endwhile
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
