function [] = TesteA() %não funciona direito ainda, tá imprimindo errado
  E=0.00001;
  h=1;
  i = -5;
  for j=1:10
    A(h) = i;
    [n m] = Fase1(i);
    [k y] = F1(i);
    PF(h) = PosicaoFalsa(E,i,n,m);
    NR(h) = NewtonRaphson(E,i,n,m);
    NRM(h) = NewtonRaphsonMod(E,i,n,m);
    MAX(h) = F(PFD(E,i,k,y),i);
    h++;
    i++;
  endfor
  printf("\n-----------------------------------------------------------------------------------------\n");
  printf("A\t\tPF\t\tNR\t\tNRM\t\tMAX\n");
  for x = 1:10
    printf("%d\t\t%d\t\t%d\t\t%d\t\t%d",A(x),PF(x),NR(x),NRM(x),MAX(x));
  endfor
  printf("\n-----------------------------------------------------------------------------------------\n");
endfunction
