function [x] = PosicaoFalsa(E,a,n,m) % Recebe a precisao a constante e o intervalo, retorna x
  I = m-n; %Calcula o intervalo
  h=1; % seta a primeira iteracao
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("h\ta\tf(a)\t\tb\tf(b)\t\tx\t\tf(x)\t\tI");
  while(I>E)% Enquanto o intervalo for maior que a precisao
    x = ((n*F(m,a))-(m*F(n,a)))/(F(m,a)-F(n,a)); % calculo do x a ser testado
    f = F(x,a);% calculo do F(x) a ser testado
    printf("\n%d\t%d\t%d\t%d\t%d\t%d\t\t%d\t%d\n",h,n,F(n,a),m,F(m,a),x,f,I);
    if(abs(f)<E)% Testa se o x e valido
      printf("\n-----------------------------------------------------------------------------------------\n");
      return % termina a funcao
    endif
    if(f*F(n,a)>0) %Determinacao dos novos limites do intervalo
      n = x;
    else
      m = x;
    endif
    I = m-n; % calculo do novo intervalo
    h++; % proxima iteracao
  endwhile
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
